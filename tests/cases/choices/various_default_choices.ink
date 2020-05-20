// SYNTAX TEST "source.ink"

* -> hello
//<- keyword.choice.ink
//<~- source.ink
//^^ keyword.divert.ink keyword.other.ink
//  ^ source.ink
//   ^^^^^ variable.other.knot.ink
Unreachable
//<----------- source.ink
- (hello) 1
//<- keyword.gather.ink
//<~- source.ink
//^ string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
// ^^^^^ string.label.ink entity.name.label.ink string.quoted.other.ink
//      ^ string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
//       ^^ source.ink
* ->
//<- keyword.choice.ink
//<~- source.ink
//^^ keyword.divert.ink keyword.other.ink
   - - 2
//<--- source.ink
// ^^^ keyword.gather.ink
//    ^^ source.ink
- 3
//<- keyword.gather.ink
//<~-- source.ink
-> END
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^ support.constant.ink
