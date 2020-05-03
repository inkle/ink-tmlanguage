// SYNTAX TEST "source.ink"

EXTERNAL gameInc(x)
//<-------- source.ink storage.type.external.ink
//       ^^^^^^^ source.ink entity.name.function.ink
//              ^ source.ink punctuation.section.parens.begin.ink
//               ^ source.ink variable.parameter.function.ink
//                ^ source.ink punctuation.section.parens.end.ink
== function topExternal(x)
//<-- source.ink storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
// ^^^^^^^^ source.ink storage.type.ink
//          ^^^^^^^^^^^ source.ink entity.name.function.ink
//                     ^ source.ink punctuation.section.parens.begin.ink
//                      ^ source.ink variable.parameter.function.ink
//                       ^ source.ink punctuation.section.parens.end.ink
In top external
//<---------------- source.ink
~ return gameInc(x)
//<- source.ink keyword.logic.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^^^^^ source.ink keyword.control.ink
//       ^^^^^^^ source.ink variable.function.ink
//              ^ source.ink
//               ^ source.ink variable.other.ink
//                ^ source.ink
== function inkInc(x)
//<-- source.ink storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
// ^^^^^^^^ source.ink storage.type.ink
//          ^^^^^^ source.ink entity.name.function.ink
//                ^ source.ink punctuation.section.parens.begin.ink
//                 ^ source.ink variable.parameter.function.ink
//                  ^ source.ink punctuation.section.parens.end.ink
~ return x + 1
//<- source.ink keyword.logic.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^^^^^ keyword.control.ink
//       ^  variable.other.ink
//         ^ keyword.operator.arithmetic.ink
//           ^ constant.numeric.ink
