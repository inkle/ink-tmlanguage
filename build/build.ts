// Parts of file were originally extracted from the
// TypeScript-TMLanguage project.
// https://github.com/Microsoft/TypeScript-TmLanguage
//
// The original code is licensed under the MIT License
// Copyright (c) Microsoft Corporation
// All rights reserved.

import * as Fs from "fs";
import * as Yaml from "js-yaml";
import * as Path from "path";
import * as Plist from "plist";
import { VariableReplacer, updateGrammarVariables } from './helpers';

enum GrammarName {
  Generic = "Ink",
  VisualStudio = "Ink-Visual-Studio"
}

enum Extension {
  TmLanguage = "tmLanguage",
  YamlTmLangauge = "YAML-tmLanguage"
}

/* ************************************************************************** */

/**
 * Build a file path from the given `name` and `extension`.
 *
 * @param name name of the grammar
 * @param extension extension of the grammar
 */
function file(name: GrammarName, extension: Extension) {
  return Path.join(__dirname, "..", "grammars", `${name}.${extension}`);
}

/**
 * Write the given `grammar` as a TextMate Grammar plist.
 *
 * @param grammar the grammar to write
 * @param fileName a path to which to write the grammar
 */
function writePlistFile(grammar: TmGrammar | TmTheme, fileName: string) {
  const text = Plist.build(grammar);
  Fs.writeFileSync(fileName, text);
}

/**
 * Load a YAML file from the given path.
 *
 * @param fileName the path at which the YAML file can be found
 */
function readYaml(fileName: string) {
  const text = Fs.readFileSync(fileName, "utf8");
  return Yaml.safeLoad(text);
}

/**
 * Load and perform variable subtitution in the YAML grammar.
 *
 * @param scopeReplacementRules an optional set of rules to replace scopes
 */
export function getGrammar(scopeReplacementRules?: VariableReplacer[]) {
  const filePath = file(GrammarName.Generic, Extension.YamlTmLangauge);
  const grammar = readYaml(filePath) as TmGrammar;

  if (scopeReplacementRules) {
    return updateGrammarVariables(grammar, scopeReplacementRules);
  } else {
    return updateGrammarVariables(grammar);
  }
}

/* ************************************************************************** */

function buildGenericGrammar() {
  const tsGrammar = getGrammar();
  writePlistFile(tsGrammar, file(GrammarName.Generic, Extension.TmLanguage));
}

function buildVisualStudioGrammar() {
  const scopeReplacementRules: VariableReplacer[] = [
    [new RegExp("(?<!\.)variable\.other\.ink(?!\.)"), "entity.name.variable.other.ink"],
    [new RegExp("(?<!\.)variable\.function\.ink(?!\.)"), "entity.name.function.ink"]
  ];

  const tsGrammar = getGrammar(scopeReplacementRules);
  writePlistFile(tsGrammar, file(GrammarName.VisualStudio, Extension.TmLanguage));
}

buildGenericGrammar();
buildVisualStudioGrammar();
