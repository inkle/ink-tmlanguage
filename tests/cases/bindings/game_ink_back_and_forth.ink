// SYNTAX TEST "source.ink"

EXTERNAL gameInc(x)
//<-------- storage.type.external.ink
//       ^^^^^^^ entity.name.function.ink
//              ^ punctuation.section.parens.begin.ink
//               ^ variable.parameter.function.ink
//                ^ punctuation.section.parens.end.ink
== function topExternal(x)
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
// ^^^^^^^^ storage.type.ink
//          ^^^^^^^^^^^ entity.name.function.ink
//                     ^ punctuation.section.parens.begin.ink
//                      ^ variable.parameter.function.ink
//                       ^ punctuation.section.parens.end.ink
In top external
//<---------------- source.ink
~ return gameInc(x)
//<- keyword.logic.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^^^^^ keyword.control.ink
//       ^^^^^^^ variable.function.ink
//              ^ source.ink
//               ^ variable.other.ink
//                ^ source.ink
== function inkInc(x)
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
// ^^^^^^^^ storage.type.ink
//          ^^^^^^ entity.name.function.ink
//                ^ punctuation.section.parens.begin.ink
//                 ^ variable.parameter.function.ink
//                  ^ punctuation.section.parens.end.ink
~ return x + 1
//<- keyword.logic.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^^^^^ keyword.control.ink
//       ^  variable.other.ink
//         ^ keyword.operator.arithmetic.ink
//           ^ constant.numeric.ink
