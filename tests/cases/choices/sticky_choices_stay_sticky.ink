// SYNTAX TEST "source.ink"

-> test
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^ variable.other.knot.ink
== test ==
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^ entity.name.function.ink
//     ^ source.ink
//      ^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
First line.
//<----------- source.ink
Second line.
//<------------ source.ink
+ Choice 1
//<- keyword.choice.sticky.ink keyword.operator.arithmetic.ink
//<--------- source.ink
+ Choice 2
//<- keyword.choice.sticky.ink keyword.operator.arithmetic.ink
//<--------- source.ink
- -> test
//<- keyword.gather.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^ keyword.divert.ink keyword.other.ink
//  ^ source.ink
//   ^^^^ variable.other.knot.ink
