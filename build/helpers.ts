// Parts of file were originally extracted from the
// TypeScript-TMLanguage project.
// https://github.com/Microsoft/TypeScript-TmLanguage
//
// The original code is licensed under the MIT License
// Copyright (c) Microsoft Corporation
// All rights reserved.

// tslint:disable:no-shadowed-variable
// tslint:disable:forin

export type VariableReplacer = [RegExp, string];

/* ************************************************************************** */

/**
 * Replace all the patterns (`{{variableName}}`) with the values defined in
 * `grammar.variables`.
 *
 * @param grammar the grammar to transform
 * @param scopeReplacementRules an optional set of rules used to
 *                              replace entire scopes.
 */
export function updateGrammarVariables(
  grammar: TmGrammar,
  scopeReplacementRules?: VariableReplacer[]
) {
  // Keep a copy of the variable for later use and delete them from the grammar.
  const variables = grammar.variables;
  delete grammar.variables;

  const variableReplacers: VariableReplacer[] = [];
  for (const variableName in variables) {
    // Replace the pattern with earlier variables
    const pattern = replacePatternVariables(
      variables[variableName],
      variableReplacers
    );

    // When a variable is resolved, it's added to replacers. Then it can be used
    // if another variable depends on it.
    variableReplacers.push([new RegExp(`{{${variableName}}}`, "gim"), pattern]);
  }

  transformGrammarRepository(
    grammar,
    ["begin", "end", "match"],
    pattern => replacePatternVariables(pattern, variableReplacers),
  );

  if (scopeReplacementRules) {
    transformGrammarRepository(
      grammar,
      ["name"],
      pattern => replaceScopes(pattern, scopeReplacementRules)
    );
  }

  return grammar;
}

/**
 * If a declared variable itself depends on other variables, this
 * function performs the substitutions, so that the variable is
 * fully resolved.
 *
 * @param pattern the variable name
 * @param variableReplacers a list of replacers, which is expected to
 *                          grow each time a new variable is resolved.
 */
function replacePatternVariables(
  pattern: string,
  variableReplacers: VariableReplacer[]
) {
  let result = pattern;
  for (const [variableName, value] of variableReplacers) {
    result = result.replace(variableName, value);
  }
  return result;
}

function replaceScopes(
  pattern: string,
  scopeReplacementRules: VariableReplacer[]
) {
  let result = pattern;
  for (const [variableName, value] of scopeReplacementRules) {
    result = result.replace(variableName, value);
  }
  return result;
}

/**
 * In each rule of the repository, substitute variables for the given
 * `propertyNames` using `transformProperty`.
 *
 * @param grammar
 * @param propertyNames
 * @param transformProperty
 */
function transformGrammarRepository(
  grammar: TmGrammar,
  propertyNames: string[],
  transformProperty: (ruleProperty: string) => string,
  replaceScopes?: (ruleProperty: string) => string
) {
  const repository = grammar.repository;
  for (const key in repository) {
    transformGrammarRule(repository[key], propertyNames, transformProperty);
  }

  if (replaceScopes) {
    for (const key in repository) {
      transformGrammarRule(repository[key], propertyNames, replaceScopes);
    }
  }
}

/**
 * Look into the `rule` and then recursively perform transformations for
 * the given `propertyNames` using `transformProperty`.
 *
 * @param rule
 * @param propertyNames
 * @param transformProperty
 */
function transformGrammarRule(
  rule: Record<string, any>,
  propertyNames: string[],
  transformProperty: (ruleProperty: string) => string,
) {
  for (const propertyName of propertyNames) {
    const value = rule[propertyName];
    if (typeof value === "string") {
      rule[propertyName] = transformProperty(value);
    }
  }

  for (const propertyName in rule) {
    const value = rule[propertyName];
    if (typeof value === "object") {
      transformGrammarRule(value, propertyNames, transformProperty);
    }
  }
}
