# ![Ink TMLanguage](https://i.imgur.com/oLMOVfq.png)

[![Build Status](https://travis-ci.org/ephread/ink-tmlanguage.svg?branch=master)](https://travis-ci.org/ephread/ink-tmlanguage)
[![npm version](https://img.shields.io/npm/v/ink-tmlanguage.svg)](https://www.npmjs.com/package/ink-tmlanguage)
[![Install Size](https://packagephobia.now.sh/badge?p=ink-tmlanguage)](https://packagephobia.now.sh/result?p=ink-tmlanguage)
[![Licence](https://img.shields.io/npm/l/ink-tmlanguage.svg)](https://github.com/ephread/ink-tmlanguage/blob/master/LICENSE.md)
[![Dependencies](https://david-dm.org/ephread/ink-tmlanguage/status.svg)](https://david-dm.org/ephread/ink-tmlanguage)

Brings syntax highlighting for inkle's Ink, in your editor of choice (as long as
it supports TextMate grammars).

If you're just looking for the plist-based grammar, head over to the [releases](https://github.com/ephread/ink-tmlanguage/releases)!

## Table of contents

  * [Building the grammar](#building-the-grammar)
  * [Limitations](#limitations)
  * [Availability through NPM](#availability-through-npm)
  * [License](#license)

## Building the grammar

The grammar is written using the `YAML-tmLanguage` format, with a couple of
additions borrowed from [TypeScript-TmLanguage](https://github.com/Microsoft/TypeScript-TmLanguage).

Building the grammar is easy, you need the latest version of node.js and either
NPM or Yarn.

1. clone this repository;
2. run `npm install` or `yarn install`;
3. run `npm run build` or `yarn run build`;
4. the `Ink.tmLanguage` file should be available in `grammars/`.

## Availability through NPM

As a convenience, the grammar is also available through NPM. If you're building
an extension for Atom or VS Code, you may want to depend on this package.

Once installed, the grammar can be found in
`node_modules/ink-tmlanguage/grammars/Ink.tmLanguage`.

## Contributing

If the grammar is missing something, open issue or fix it yourself and submit a
pull request!

When working on the grammar, you may want to use `npm run watch`, which will rebuild the plist grammar on every change.

## License

The grammar description is released under the MIT license. See LICENSE for details.

This project borrows some code from [TypeScript-TmLanguage](https://github.com/Microsoft/TypeScript-TmLanguage), licensed under the [MIT licence](https://github.com/Microsoft/TypeScript-TmLanguage/blob/4a620294f8652e4e3a4a605308650a52773ccec6/LICENSE.txt).
