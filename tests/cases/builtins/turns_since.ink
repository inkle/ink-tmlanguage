// SYNTAX TEST "source.ink"

{ TURNS_SINCE(-> test) }
//<- source.ink keyword.control.ink
//<---------------------- source.ink keyword.control.ink
//                     ^ source.ink keyword.control.ink
~ test()
//<- source.ink keyword.logic.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^^^ source.ink entity.name.function.ink
//    ^^ source.ink
{ TURNS_SINCE(-> test) }
//<- source.ink keyword.control.ink
//<---------------------- source.ink keyword.control.ink
//                     ^ source.ink keyword.control.ink
* [choice 1]
//<-- source.ink keyword.choice.ink keyword.operator.arithmetic.ink
//^ source.ink keyword.choice.suppression.ink keyword.control.ink
// ^^^^^^^^ source.ink
//         ^ source.ink keyword.choice.suppression.ink keyword.control.ink
- { TURNS_SINCE(-> test) }
//<-- source.ink keyword.gather.ink keyword.operator.arithmetic.ink
//^ source.ink keyword.control.ink
// ^^^^^^^^^^^^^^^^^^^^^^ source.ink keyword.control.ink
//                       ^ source.ink keyword.control.ink
* [choice 2]
//<-- source.ink keyword.choice.ink keyword.operator.arithmetic.ink
//^ source.ink keyword.choice.suppression.ink keyword.control.ink
// ^^^^^^^^ source.ink
//         ^ source.ink keyword.choice.suppression.ink keyword.control.ink
- { TURNS_SINCE(-> test) }
//<-- source.ink keyword.gather.ink keyword.operator.arithmetic.ink
//^ source.ink keyword.control.ink
// ^^^^^^^^^^^^^^^^^^^^^^ source.ink keyword.control.ink
//                       ^ source.ink keyword.control.ink
== function test ==
//<-- source.ink storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^^^^^ source.ink storage.type.ink
//         ^ source.ink
//          ^^^^ source.ink entity.name.function.ink
//              ^ source.ink
//               ^^ source.ink storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
~ return
//<- source.ink keyword.logic.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^^^^^ source.ink keyword.control.ink
