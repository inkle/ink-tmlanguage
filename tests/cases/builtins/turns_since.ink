// SYNTAX TEST "source.ink"

{ TURNS_SINCE(-> test) }
//<- keyword.control.ink
//<---------------------- keyword.control.ink
//                     ^ keyword.control.ink
~ test()
//<- keyword.logic.ink
//<~- source.ink
//^^^^ variable.function.ink
//    ^^ source.ink
{ TURNS_SINCE(-> test) }
//<- keyword.control.ink
//<---------------------- keyword.control.ink
//                     ^ keyword.control.ink
* [choice 1]
//<- keyword.choice.ink
//^ keyword.choice.suppression.ink keyword.control.ink
// ^^^^^^^^ source.ink
//         ^ keyword.choice.suppression.ink keyword.control.ink
- { TURNS_SINCE(-> test) }
//<- keyword.gather.ink
//^ keyword.control.ink
// ^^^^^^^^^^^^^^^^^^^^^^ keyword.control.ink
//                       ^ keyword.control.ink
* [choice 2]
//<- keyword.choice.ink
//^ keyword.choice.suppression.ink keyword.control.ink
// ^^^^^^^^ source.ink
//         ^ keyword.choice.suppression.ink keyword.control.ink
- { TURNS_SINCE(-> test) }
//<- keyword.gather.ink
//^ keyword.control.ink
// ^^^^^^^^^^^^^^^^^^^^^^ keyword.control.ink
//                       ^ keyword.control.ink
== function test ==
//<-- storage.knot.ink storage.type.ink
//^ source.ink
// ^^^^^^^^ storage.type.ink
//         ^ source.ink
//          ^^^^ entity.name.function.ink
//              ^ source.ink
//               ^^ storage.knot.ink storage.type.ink
~ return
//<- keyword.logic.ink
//<~- source.ink
//^^^^^^ keyword.control.ink
