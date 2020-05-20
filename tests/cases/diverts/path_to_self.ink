// SYNTAX TEST "source.ink"

- (dododo)
//<- keyword.gather.ink
//<~- source.ink
//^ string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
// ^^^^^^ string.label.ink entity.name.label.ink string.quoted.other.ink
//       ^ string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
-> tunnel ->
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^^^ variable.other.knot.ink
//       ^ source.ink
//        ^^ keyword.divert.ink keyword.other.ink
-> dododo
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^^^ variable.other.knot.ink
== tunnel
//<-- storage.knot.ink storage.type.ink
//^ source.ink
// ^^^^^^ entity.name.function.ink
+ A
//<- keyword.choice.sticky.ink
//<~--- source.ink
->->
//<-- keyword.divert.ink keyword.other.ink
//^^ keyword.divert.ink keyword.other.ink
