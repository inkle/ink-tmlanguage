// Although it has been heavily modified since, this file was originally
// extracted from the TypeScript-TMLanguage project,
// https://github.com/Microsoft/TypeScript-TmLanguage
//
// The original code is licensed under the MIT License
// Copyright (c) Microsoft Corporation
// All rights reserved.

import * as vt from 'vscode-textmate/release/main';
import path = require('path');
import fs = require('fs');

interface Grammar {
  grammar: vt.IGrammar;
  ruleStack?: vt.StackElement;
}

const grammarFileName = 'Ink.tmLanguage';
const grammarPath = path.join(__dirname, '..', 'grammars', grammarFileName);

const registery = new vt.Registry({
  loadGrammar(localPath: string) {
    if (localPath) {
      return new Promise((resolve, reject) => {
        fs.readFile(localPath, (error, content) => {
          if (error) {
            reject(error);
          } else {
            const rawGrammar = vt.parseRawGrammar(content.toString(), localPath);
            resolve(rawGrammar);
          }
        });
      });
    }

    return Promise.resolve(null);
  }
});

const inkGrammar = registery.loadGrammar(grammarPath);

export function generateScopes(text: string) {
  const oriLines = text.split(/\r\n|\r|\n/);

  return inkGrammar.then((mainIGrammar) => {
    console.log(mainIGrammar);
    generateScopesWorker(
    initGrammar(mainIGrammar!),
    oriLines
  );
  }, (error) => {
    console.log(error);
  });
}

function getInputFile(oriLines: string[]): string {
  return "original file\n-----------------------------------\n" +
  oriLines.join("\n") +
  "\n-----------------------------------\n\n";
}

function initGrammar(grammar: vt.IGrammar): Grammar {
  return { grammar };
}

function tokenizeLine(grammar: Grammar, line: string) {
  const lineTokens = grammar.grammar.tokenizeLine(line, grammar.ruleStack!);
  grammar.ruleStack = lineTokens.ruleStack;
  return lineTokens.tokens;
}

function getBaseline(grammar: Grammar, outputLines: string[]) {
  return outputLines.join('\n');
}

function validateTokenScopeExtension(grammar: Grammar, token: vt.IToken) {
  return !token.scopes.some(scope => !isValidScopeExtension(scope));
}

function isValidScopeExtension(scope: string) {
  return scope.endsWith(".ink");
}

function generateScopesWorker(mainGrammar: Grammar, oriLines: string[]): string {
  const cleanLines: string[] = [];
  const baselineLines: string[] = [];

  for (const i of oriLines) {
    const line = oriLines[i];

    const mainLineTokens = tokenizeLine(mainGrammar, line);

    cleanLines.push(line);
    baselineLines.push(">" + line);

    for (const token of mainLineTokens) {
      writeTokenLine(mainGrammar, token, baselineLines);
    }
  }

  return getInputFile(cleanLines) + getBaseline(mainGrammar, baselineLines);
}

function writeTokenLine(grammar: Grammar, token: vt.IToken, outputLines: string[]) {
  let startingSpaces = " ";
  for (let j = 0; j < token.startIndex; j++) {
    startingSpaces += " ";
  }

  let locatingString = "";
  for (let j = token.startIndex; j < token.endIndex; j++) {
    locatingString += "^";
  }
  outputLines.push(startingSpaces + locatingString);
  outputLines.push(`${startingSpaces}${token.scopes.join(' ')}${validateTokenScopeExtension(grammar, token) ? "" : " INCORRECT_SCOPE_EXTENSION"}`);
}
