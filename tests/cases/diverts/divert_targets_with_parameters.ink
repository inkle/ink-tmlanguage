// SYNTAX TEST "source.ink"

VAR x = ->place
//<--- storage.type.ink storage.type.var.ink
// ^ source.ink
//  ^ variable.other.ink
//   ^ source.ink
//    ^ keyword.operator.assignment.ink
//     ^ source.ink
//      ^^ keyword.divert.ink keyword.other.ink
//        ^^^^^ variable.other.knot.ink
->x (5)
//<-- keyword.divert.ink keyword.other.ink
//^ variable.function.ink
// ^ source.ink
//  ^ punctuation.section.parens.begin.ink
//   ^ constant.numeric.ink
//    ^ punctuation.section.parens.end.ink
== place (a) ==
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^^ entity.name.function.ink
//      ^ source.ink
//       ^ punctuation.section.parens.begin.ink
//        ^ variable.parameter.function.ink
//         ^ punctuation.section.parens.end.ink
//          ^ source.ink
//           ^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
{a}
//<- keyword.control.ink
//<~- keyword.control.ink
//^ keyword.control.ink
-> DONE
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^ support.constant.ink
