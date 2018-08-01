# ![Ink TMLanguage](https://i.imgur.com/oLMOVfq.png)

[![Build Status](https://travis-ci.org/ephread/ink-tmlanguage.svg?branch=master)](https://travis-ci.org/ephread/ink-tmlanguage)
[![npm version](https://img.shields.io/npm/v/ink-tmlanguage.svg)](https://www.npmjs.com/package/ink-tmlanguage)
[![Install Size](https://packagephobia.now.sh/badge?p=ink-tmlanguage)](https://packagephobia.now.sh/result?p=ink-tmlanguage)
[![Licence](https://img.shields.io/npm/l/ink-tmlanguage.svg)](https://github.com/ephread/ink-tmlanguage/blob/master/LICENSE)
[![Dependencies](https://david-dm.org/ephread/ink-tmlanguage/status.svg)](https://david-dm.org/ephread/ink-tmlanguage)

Brings syntax highlighting for inkle's Ink, in your editor of choice (as long as
it supports TextMate grammars).

If you're just looking for the plist-based grammar, head over to the [releases](https://github.com/ephread/ink-tmlanguage/releases)!

## Table of contents

  * [Building the grammar](#building-the-grammar)
  * [Limitations](#limitations)
  * [Building a custom theme](#building-a-custom-theme)
  * [Availability through NPM](#availability-through-npm)
  * [Contributing](#contributing)
  * [License](#license)

## Building the grammar

The grammar is written using the `YAML-tmLanguage` format, with a couple of
additions borrowed from [TypeScript-TmLanguage](https://github.com/Microsoft/TypeScript-TmLanguage).

Building the grammar is easy, you need the latest version of node.js and your favourite npm-compatible package manager.

1. clone this repository;
2. run `npm install` or `yarn install`;
3. run `npm run build` or `yarn run build`;
4. the `Ink.tmLanguage` file should be available in `grammars/`.

## Limitations

There are currently a number of limitations in the grammar, which may or may not be overcome in the future.

### Ambiguity of `{ }` constructs

In Ink, `{ }` can hold a lot of different things. In particular, the construct can either be an alternative or a conditional substitution. Due to current limitations, expressions will not be properly highlighted in conditionals, as they lead to false-positive in the first elements of alternatives.

In these constructs, all the elements contained in the first expression (`x == 0:`) will be named with the same scope.

```ink
{ x == 0: Hello }
{ x == 0: Hello | hi }
{ x == 0:
	Hello
  - else:
  	Hi
}
```

This is not the case in the following example, where each element of the full expression will be named with their own scopes.

```ink
{
	- x == 0:
		Hello
}
~ y = (x == 0)
~ myFunction(x == 0)
```

### Text suppression

In choice constructs, Ink offer the ability to separate the content in up to three sequences using `[ ]`. While there can only be one `[ ]` per choice, the grammar will still highlight subsequent `[ ]`, even if they are treated as regular text by Ink.

```ink
* (myChoice) {x == 0}
  "Hello John Doe[."], I need to tell you something [special]"
```

In the example above, only `[."]` should be highlighted.


## Building a custom theme

All the captures support the generic scopes recommended by the [Sublime Text documentation](https://www.sublimetext.com/docs/3/scope_naming.html), narrowed down to `.ink`. This means that the grammar will work out of box with existing themes.

Most of the captures are multi-scoped, with the first scope defined by the theme being used. Some of these multi-scoped captures support ink-specific scopes, which can be implemented by your custom theme. They are described as follows:

- `string.label.ink` → `(label)`
- `string.tag.ink` → `#tag`
- `keyword.glue.ink` → `<>`
- `keyword.choice.ink` → `*`
- `keyword.choice.sticky.ink` → `+`
- `keyword.choice.suppression.ink` → `[ ]`
- `keyword.logic.ink` → `~`
- `keyword.gather.ink` → `-`
- `keyword.divert.ink` → `->` or `<-`
- `keyword.alternative.type.ink` → `&` or `~` or `!` inside `{ }`
- `storage.knot.ink` → Identifier after / between `=`

## Availability through NPM

As a convenience, the grammar is also available through the npm registry. If you're building an extension for Atom or VS Code, you may want to depend on this package.

Once installed, the grammar can be found in `node_modules/ink-tmlanguage/grammars/Ink.tmLanguage`.

## Contributing

If the grammar is missing something, open an issue or fix it and submit a
pull request!

When working on the grammar, you may want to use `npm run watch`, which will rebuild the plist grammar on every change.

## License

The grammar is released under the MIT license. See LICENSE for details.

This project borrows some code from [TypeScript-TmLanguage](https://github.com/Microsoft/TypeScript-TmLanguage), licensed under the [MIT license](https://github.com/Microsoft/TypeScript-TmLanguage/blob/4a620294f8652e4e3a4a605308650a52773ccec6/LICENSE.txt).
