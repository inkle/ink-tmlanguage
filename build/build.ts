// This file was originally extracted from the TypeScript-TMLanguage project.
// https://github.com/Microsoft/TypeScript-TmLanguage
//
// The original code is licensed under the MIT License
// Copyright (c) Microsoft Corporation
// All rights reserved.

import * as Fs from "fs";
import * as Yaml from "js-yaml";
import * as Path from "path";
import * as Plist from "plist";

// tslint:disable:no-shadowed-variable
// tslint:disable:forin

enum Language {
  Ink = "Ink"
}

enum Extension {
  TmLanguage = "tmLanguage",
  YamlTmLangauge = "YAML-tmLanguage"
}

function file(language: Language, extension: Extension) {
  return Path.join(__dirname, "..", "grammars", `${language}.${extension}`);
}

function writePlistFile(grammar: TmGrammar | TmTheme, fileName: string) {
  const text = Plist.build(grammar);
  Fs.writeFileSync(fileName, text);
}

function readYaml(fileName: string) {
  const text = Fs.readFileSync(fileName, "utf8");
  return Yaml.safeLoad(text);
}

function transformGrammarRule(
  rule: any,
  propertyNames: string[],
  transformProperty: (ruleProperty: string) => string
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

function transformGrammarRepository(
  grammar: TmGrammar,
  propertyNames: string[],
  transformProperty: (ruleProperty: string) => string
) {
  const repository = grammar.repository;
  for (const key in repository) {
    transformGrammarRule(repository[key], propertyNames, transformProperty);
  }
}

function getInkGrammar(
  getVariables: (tsGrammarVariables: MapLike<string>) => MapLike<string>
) {
  const tsGrammarBeforeTransformation = readYaml(
    file(Language.Ink, Extension.YamlTmLangauge)
  ) as TmGrammar;
  return updateGrammarVariables(
    tsGrammarBeforeTransformation,
    getVariables(tsGrammarBeforeTransformation.variables)
  );
}

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

type VariableReplacer = [RegExp, string];
function updateGrammarVariables(
  grammar: TmGrammar,
  variables: MapLike<string>
) {
  delete grammar.variables;
  const variableReplacers: VariableReplacer[] = [];
  for (const variableName in variables) {
    // Replace the pattern with earlier variables
    const pattern = replacePatternVariables(
      variables[variableName],
      variableReplacers
    );
    variableReplacers.push([new RegExp(`{{${variableName}}}`, "gim"), pattern]);
  }
  transformGrammarRepository(grammar, ["begin", "end", "match"], pattern =>
    replacePatternVariables(pattern, variableReplacers)
  );
  return grammar;
}

function buildGrammar() {
  const tsGrammar = getInkGrammar(grammarVariables => grammarVariables);
  writePlistFile(tsGrammar, file(Language.Ink, Extension.TmLanguage));
}

buildGrammar();
