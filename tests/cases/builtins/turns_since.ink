// SYNTAX TEST "source.ink"

{ TURNS_SINCE(-> test) }
//<- keyword.control.ink
//<---------------------- keyword.control.ink
//                     ^ keyword.control.ink
~ test()
//<- keyword.logic.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^^^ variable.function.ink
//    ^^ source.ink
{ TURNS_SINCE(-> test) }
//<- keyword.control.ink
//<---------------------- keyword.control.ink
//                     ^ keyword.control.ink
* [choice 1]
//<- keyword.choice.ink keyword.operator.arithmetic.ink
//^ keyword.choice.suppression.ink keyword.control.ink
// ^^^^^^^^ source.ink
//         ^ keyword.choice.suppression.ink keyword.control.ink
- { TURNS_SINCE(-> test) }
//<- keyword.gather.ink keyword.operator.arithmetic.ink
//^ keyword.control.ink
// ^^^^^^^^^^^^^^^^^^^^^^ keyword.control.ink
//                       ^ keyword.control.ink
* [choice 2]
//<- keyword.choice.ink keyword.operator.arithmetic.ink
//^ keyword.choice.suppression.ink keyword.control.ink
// ^^^^^^^^ source.ink
//         ^ keyword.choice.suppression.ink keyword.control.ink
- { TURNS_SINCE(-> test) }
//<- keyword.gather.ink keyword.operator.arithmetic.ink
//^ keyword.control.ink
// ^^^^^^^^^^^^^^^^^^^^^^ keyword.control.ink
//                       ^ keyword.control.ink
== function test ==
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^^^^^ storage.type.ink
//         ^ source.ink
//          ^^^^ entity.name.function.ink
//              ^ source.ink
//               ^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
~ return
//<- keyword.logic.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^^^^^ keyword.control.ink
