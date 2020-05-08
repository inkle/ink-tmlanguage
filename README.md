# ![Ink TMLanguage](https://i.imgur.com/oLMOVfq.png)

[![Build Status](https://github.com/inkle/ink-tmlanguage/workflows/build/badge.svg)](https://github.com/inkle/ink-tmlanguage/actions)
[![npm version](https://img.shields.io/npm/v/ink-tmlanguage.svg)](https://www.npmjs.com/package/ink-tmlanguage)
[![Licence](https://img.shields.io/npm/l/ink-tmlanguage.svg)](https://github.com/inkle/ink-tmlanguage/blob/master/LICENSE)
[![Dependencies](https://david-dm.org/ephread/ink-tmlanguage/status.svg)](https://david-dm.org/inkle/ink-tmlanguage)

Brings syntax highlighting for inkle's Ink, in your editor of choice (as long as
it supports TextMate grammars).

If you're just looking for the plist-based grammar, head over to the [releases](https://github.com/inkle/ink-tmlanguage/releases)!

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

### `{ }` constructs

In Ink, `{ }` can be an alternative, a sequence, a switch, a conditional, etc.
Since TextMate grammars can only match one line at a time, there are some small limitations.

#### Expressions

Expressions will not be fully highlighted in conditionals.
Anything contained in the condition (before `:`) is named with the same scope.

```ink
{ x == 0: Hello }
{ x == 0: Hello | hi }
{ x == 0:
	Hello
  - else:
  	Hi
}
{
	- x == 0:
		Hello
}
{ window_opts < 2 || learnt(fingerprints_on_glass) || GlassState ? steamed:
	I looked away from the dreary glass.
}
```

This is not the case in the following example, where all expression tokens are named with their own scopes.

```ink
~ y = (x == 0)
~ myFunction(x == 0)
```

Additionally, while the following is perfectly valid ink, there's a false positive on both `else:` and `then:`.

```ink
{conditional()}
{conditional()}
{conditional()}
{conditional()}

=== function conditional() ===
{once:
  - if condition
  - then: do this
  - else: do that
  - end
}
```

This limitation can be worked around by escaping the colon:

```ink
=== function conditional() ===
{once:
  - if condition
  - then\: do this
  - else\: do that
  - end
}
```

### Choices

In choice, it's sometimes possible for the content to be expressed on the next line
if it's preceded by a condition. In the example below, the text supression of
the first choice will not be highlighted, as it won't be matched as part of the choice.
The second choice will however be highlighted properly.

```ink
VAR x = 0

* (firstChoice) {x == 0}
"Hello John Doe[."], I need to tell you something special"

* (secondChoice) {x != 0} "Hello John Doe[."], I won't say a word"
```

## Building a custom theme

All the captures support the generic scopes recommended by the [Sublime Text documentation](https://www.sublimetext.com/docs/3/scope_naming.html), narrowed down to `.ink`. This means that the grammar will work out of box with existing themes.

Most of the captures are multi-scoped, with the first scope defined by the theme being used. Some of these multi-scoped captures support ink-specific scopes, which can be implemented by your custom theme. They are described below:

- `string.label.ink` → `(label)`
- `entity.tag.ink` → `#tag`
- `entity.todo.ink` → `TODO`
- `keyword.glue.ink` → `<>`
- `keyword.choice.ink` → `*`
- `keyword.choice.sticky.ink` → `+`
- `keyword.choice.suppression.ink` → `[ ]`
- `keyword.logic.ink` → `~`
- `keyword.gather.ink` → `-`
- `keyword.divert.ink` → `->` or `<-`
- `keyword.alternative.type.ink` → `&` or `~` or `!` inside `{ }`
- `storage.knot.ink` → Identifier after / between `=`
- `variable.other.knot.ink` → a knot identifier in a divert
- `variable.other.stitch.ink` → a stitch identifier in a divert
- `variable.other.label.ink` → a label identifier in a divert

## Availability through npm

As a convenience, the grammar is also available through the npm registry.
If you're building an extension for Atom or VS Code, you may want to depend on this package.

Once installed, the grammar can be found in `node_modules/ink-tmlanguage/grammars/Ink.tmLanguage`.

## Contributing

If the grammar is missing something, open an issue or fix it and submit a pull request!
When working on the grammar, you may want to use `npm run watch`, which will rebuild the plist grammar on every change.

## License

The grammar is released under the MIT license. See LICENSE for details.

This project borrows some code from [TypeScript-TmLanguage](https://github.com/Microsoft/TypeScript-TmLanguage), licensed under the [MIT license](https://github.com/Microsoft/TypeScript-TmLanguage/blob/4a620294f8652e4e3a4a605308650a52773ccec6/LICENSE.txt).
