// SYNTAX TEST "source.ink"

VAR times = 3
//<--- storage.type.ink storage.type.var.ink
// ^ source.ink
//  ^^^^^ variable.other.ink
//       ^ source.ink
//        ^ keyword.operator.assignment.ink
//         ^ source.ink
//          ^ constant.numeric.ink
-> home
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^ variable.other.knot.ink
== home ==
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^ entity.name.function.ink
//     ^ source.ink
//      ^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
~ times = times - 1
//<- keyword.logic.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^^^^ variable.other.ink
//     ^ source.ink
//      ^ keyword.operator.assignment.ink
//       ^ source.ink
//        ^^^^^ variable.other.ink
//             ^^^ keyword.operator.arithmetic.ink
//                ^ constant.numeric.ink
{times >= 0:-> eat}
//<- keyword.control.ink
//<------------ keyword.control.ink
//          ^^ keyword.divert.ink keyword.other.ink
//            ^ source.ink
//             ^^^ variable.other.knot.ink
//                ^ keyword.control.ink
I've finished eating now.
//<------------------------- source.ink
-> END
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^ support.constant.ink
== eat ==
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^ entity.name.function.ink
//    ^ source.ink
//     ^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
This is the {first|second|third} time.
//<------------ source.ink
//          ^ keyword.control.ink
//           ^^^^^ source.ink
//                ^ keyword.control.ink
//                 ^^^^^^ source.ink
//                       ^ keyword.control.ink
//                        ^^^^^ source.ink
//                             ^ keyword.control.ink
//                              ^^^^^^^ source.ink
* Eat ice-cream[]
//<- keyword.choice.ink keyword.operator.arithmetic.ink
//<~------------- source.ink
//             ^ keyword.choice.suppression.ink keyword.control.ink
//              ^ keyword.choice.suppression.ink keyword.control.ink
* Drink coke[]
//<- keyword.choice.ink keyword.operator.arithmetic.ink
//<~---------- source.ink
//          ^ keyword.choice.suppression.ink keyword.control.ink
//           ^ keyword.choice.suppression.ink keyword.control.ink
* Munch cookies[]
//<- keyword.choice.ink keyword.operator.arithmetic.ink
//<~------------- source.ink
//             ^ keyword.choice.suppression.ink keyword.control.ink
//              ^ keyword.choice.suppression.ink keyword.control.ink
-
//<- keyword.gather.ink keyword.operator.arithmetic.ink
-> home
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^ variable.other.knot.ink
