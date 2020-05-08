// SYNTAX TEST "source.ink"

/** VARIABLES *****************************************************************/

VAR list = (abc, def)
//<--- storage.type.ink storage.type.var.ink
// ^ source.ink
//  ^^^^ variable.other.ink
//      ^ source.ink
//       ^ keyword.operator.assignment.ink
//        ^^ source.ink
//          ^^^ variable.other.ink
//             ^^ source.ink
//               ^^^ variable.other.ink
//                  ^ source.ink
VAR string = "Hello"
//<--- storage.type.ink storage.type.var.ink
// ^ source.ink
//  ^^^^^^ variable.other.ink
//        ^ source.ink
//         ^ keyword.operator.assignment.ink
//          ^ source.ink
//           ^ punctuation.definition.string.begin.ink
//            ^^^^^ string.quoted.double.ink
//                 ^ punctuation.definition.string.end.ink
VAR 987r_tr5xc09 = 10
//<--- storage.type.ink storage.type.var.ink
// ^ source.ink
//  ^^^^^^^^^^^^ variable.other.ink
//              ^ source.ink
//               ^ keyword.operator.assignment.ink
//                ^ source.ink
//                 ^^ constant.numeric.ink
VAR number = 0.7
//<--- storage.type.ink storage.type.var.ink
// ^ source.ink
//  ^^^^^^ variable.other.ink
//        ^ source.ink
//         ^ keyword.operator.assignment.ink
//          ^ source.ink
//           ^^^ constant.numeric.ink
VAR boolean = false
//<--- storage.type.ink storage.type.var.ink
// ^ source.ink
//  ^^^^^^^ variable.other.ink
//         ^ source.ink
//          ^ keyword.operator.assignment.ink
//           ^ source.ink
//            ^^^^^ constant.language.ink constant.language.boolean.ink
VAR boolean = true
//<--- storage.type.ink storage.type.var.ink
// ^ source.ink
//  ^^^^^^^ variable.other.ink
//         ^ source.ink
//          ^ keyword.operator.assignment.ink
//           ^ source.ink
//            ^^^^ constant.language.ink constant.language.boolean.ink
VAR previous = string
//<--- storage.type.ink storage.type.var.ink
// ^ source.ink
//  ^^^^^^^^ variable.other.ink
//          ^ source.ink
//           ^ keyword.operator.assignment.ink
//            ^ source.ink
//             ^^^^^^ variable.other.ink
VAR divert = -> target_divert
//<--- storage.type.ink storage.type.var.ink
// ^ source.ink
//  ^^^^^^ variable.other.ink
//        ^ source.ink
//         ^ keyword.operator.assignment.ink
//          ^ source.ink
//           ^^ keyword.divert.ink keyword.other.ink
//             ^ source.ink
//              ^^^^^^^^^^^^^ variable.other.knot.ink

VAR list = (abc, def) // Test comment
//<--- storage.type.ink storage.type.var.ink
// ^ source.ink
//  ^^^^ variable.other.ink
//      ^ source.ink
//       ^ keyword.operator.assignment.ink
//        ^^ source.ink
//          ^^^ variable.other.ink
//             ^^ source.ink
//               ^^^ variable.other.ink
//                  ^^ source.ink
//                    ^^ comment.line.ink punctuation.definition.comment.ink
//                      ^^^^^^^^^^^^^ comment.line.ink

/** CONSTANTS *****************************************************************/

CONST LIST = (abc, def)
//<----- storage.type.const.ink
//   ^ source.ink
//    ^^^^ variable.other.constant.ink
//        ^ source.ink
//         ^ keyword.operator.assignment.ink
//          ^^ source.ink
//            ^^^ variable.other.ink
//               ^^ source.ink
//                 ^^^ variable.other.ink
//                    ^ source.ink
CONST STRING = "Hello"
//<----- storage.type.const.ink
//   ^ source.ink
//    ^^^^^^ variable.other.constant.ink
//          ^ source.ink
//           ^ keyword.operator.assignment.ink
//            ^ source.ink
//             ^ punctuation.definition.string.begin.ink
//              ^^^^^ string.quoted.double.ink
//                   ^ punctuation.definition.string.end.ink
CONST 987T_TR5XC09 = 10
//<----- storage.type.const.ink
//   ^ source.ink
//    ^^^^^^^^^^^^ variable.other.constant.ink
//                ^ source.ink
//                 ^ keyword.operator.assignment.ink
//                  ^ source.ink
//                   ^^ constant.numeric.ink
CONST NUMBER = 0.7
//<----- storage.type.const.ink
//   ^ source.ink
//    ^^^^^^ variable.other.constant.ink
//          ^ source.ink
//           ^ keyword.operator.assignment.ink
//            ^ source.ink
//             ^^^ constant.numeric.ink
CONST BOOLEAN = false
//<----- storage.type.const.ink
//   ^ source.ink
//    ^^^^^^^ variable.other.constant.ink
//           ^ source.ink
//            ^ keyword.operator.assignment.ink
//             ^ source.ink
//              ^^^^^ constant.language.ink constant.language.boolean.ink
CONST BOOLEAN = true
//<----- storage.type.const.ink
//   ^ source.ink
//    ^^^^^^^ variable.other.constant.ink
//           ^ source.ink
//            ^ keyword.operator.assignment.ink
//             ^ source.ink
//              ^^^^ constant.language.ink constant.language.boolean.ink
CONST PREVIOUS = STRING
//<----- storage.type.const.ink
//   ^ source.ink
//    ^^^^^^^^ variable.other.constant.ink
//            ^ source.ink
//             ^ keyword.operator.assignment.ink
//              ^ source.ink
//               ^^^^^^ variable.other.ink
CONST DIVERT = -> target_divert
//<----- storage.type.const.ink
//   ^ source.ink
//    ^^^^^^ variable.other.constant.ink
//          ^ source.ink
//           ^ keyword.operator.assignment.ink
//            ^ source.ink
//             ^^ keyword.divert.ink keyword.other.ink
//               ^ source.ink
//                ^^^^^^^^^^^^^ variable.other.knot.ink

CONST string = "Hello" /*
//<----- storage.type.const.ink
//   ^ source.ink
//    ^^^^^^ variable.other.constant.ink
//          ^ source.ink
//           ^ keyword.operator.assignment.ink
//            ^ source.ink
//             ^ punctuation.definition.string.begin.ink
//              ^^^^^ string.quoted.double.ink
//                   ^ punctuation.definition.string.end.ink
//                    ^ source.ink
//                     ^^ comment.block.ink punctuation.definition.comment.ink
    test comment
//<---------------- comment.block.ink
*/
//<-- comment.block.ink punctuation.definition.comment.ink

/** TEMPS *********************************************************************/

~ temp list = (abc, def)
//<- keyword.logic.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^^^ storage.modifier.ink
//    ^ source.ink
//     ^^^^ variable.other.ink
//         ^ source.ink
//          ^ keyword.assignment.ink
//           ^^ source.ink
//             ^^^ variable.other.ink
//                ^^ source.ink
//                  ^^^ variable.other.ink
//                     ^ source.ink
~ temp string = "Hello"
//<- keyword.logic.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^^^ storage.modifier.ink
//    ^ source.ink
//     ^^^^^^ variable.other.ink
//           ^ source.ink
//            ^ keyword.assignment.ink
//             ^ source.ink
//              ^ punctuation.definition.string.begin.ink
//               ^^^^^ string.quoted.double.ink
//                    ^ punctuation.definition.string.end.ink
~ temp 987r_tr5xc09 = 10 // Test comment
//<- keyword.logic.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^^^ storage.modifier.ink
//    ^ source.ink
//     ^^^^^^^^^^^^ variable.other.ink
//                 ^ source.ink
//                  ^ keyword.assignment.ink
//                   ^ source.ink
//                    ^^ constant.numeric.ink
//                      ^ source.ink
//                       ^^ comment.line.ink punctuation.definition.comment.ink
//                         ^^^^^^^^^^^^^ comment.line.ink
~ temp number = 0.7
//<- keyword.logic.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^^^ storage.modifier.ink
//    ^ source.ink
//     ^^^^^^ variable.other.ink
//           ^ source.ink
//            ^ keyword.assignment.ink
//             ^ source.ink
//              ^^^ constant.numeric.ink
~ temp boolean = false
//<- keyword.logic.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^^^ storage.modifier.ink
//    ^ source.ink
//     ^^^^^^^ variable.other.ink
//            ^ source.ink
//             ^ keyword.assignment.ink
//              ^ source.ink
//               ^^^^^ constant.language.ink constant.language.boolean.ink
~ temp boolean = true
//<- keyword.logic.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^^^ storage.modifier.ink
//    ^ source.ink
//     ^^^^^^^ variable.other.ink
//            ^ source.ink
//             ^ keyword.assignment.ink
//              ^ source.ink
//               ^^^^ constant.language.ink constant.language.boolean.ink
~ temp previous = string
//<- keyword.logic.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^^^ storage.modifier.ink
//    ^ source.ink
//     ^^^^^^^^ variable.other.ink
//             ^ source.ink
//              ^ keyword.assignment.ink
//               ^ source.ink
//                ^^^^^^ variable.other.ink
~ temp compute = pow(a, b) + max(1, 3) + abc
//<- keyword.logic.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^^^ storage.modifier.ink
//    ^ source.ink
//     ^^^^^^^ variable.other.ink
//            ^ source.ink
//             ^ keyword.assignment.ink
//              ^ source.ink
//               ^^^ variable.function.ink
//                  ^  punctuation.section.parens.begin.ink
//                   ^ variable.other.ink
//                    ^ punctuation.separator.ink
//                     ^ source.ink
//                      ^ variable.other.ink
//                       ^  punctuation.section.parens.end.ink
//                        ^ source.ink
//                         ^ keyword.operator.arithmetic.ink
//                          ^ source.ink
//                           ^^^ variable.function.ink
//                              ^  punctuation.section.parens.begin.ink
//                               ^ constant.numeric.ink
//                                ^ punctuation.separator.ink
//                                 ^ source.ink
//                                  ^ constant.numeric.ink
//                                   ^  punctuation.section.parens.end.ink
//                                    ^ source.ink
//                                     ^ keyword.operator.arithmetic.ink
//                                      ^ source.ink
//                                       ^^^ variable.other.ink
~ temp computed = 987 * 34 + abc / (35 * 0.1) /*
//<- keyword.logic.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^^^ storage.modifier.ink
//    ^ source.ink
//     ^^^^^^^^ variable.other.ink
//             ^ source.ink
//              ^ keyword.assignment.ink
//               ^ source.ink
//                ^^^ constant.numeric.ink
//                   ^ source.ink
//                    ^ keyword.operator.arithmetic.ink
//                     ^ source.ink
//                      ^^ constant.numeric.ink
//                        ^ source.ink
//                         ^ keyword.operator.arithmetic.ink
//                          ^ source.ink
//                           ^^^ variable.other.ink
//                              ^ source.ink
//                               ^ keyword.operator.arithmetic.ink
//                                ^^ source.ink
//                                  ^^ constant.numeric.ink
//                                    ^ source.ink
//                                     ^ keyword.operator.arithmetic.ink
//                                      ^ source.ink
//                                       ^^^ constant.numeric.ink
//                                          ^^ source.ink
//                                            ^^ comment.block.ink punctuation.definition.comment.ink
    test comment
//<---------------- comment.block.ink
*/
//<-- comment.block.ink punctuation.definition.comment.ink
~ temp divert = -> target_divert
//<- keyword.logic.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^^^ storage.modifier.ink
//    ^ source.ink
//     ^^^^^^ variable.other.ink
//           ^ source.ink
//            ^ keyword.assignment.ink
//             ^ source.ink
//              ^^ keyword.divert.ink keyword.other.ink
//                ^ source.ink
//                 ^^^^^^^^^^^^^ variable.other.knot.ink

/** LISTS *********************************************************************/

LIST DoctorsInSurgery = Adams, Bernard, Cartwright, Denver, Eamonn
//<---- storage.type.ink storage.type.list.ink
//  ^ source.ink
//   ^^^^^^^^^^^^^^^^ variable.other.ink
//                   ^ source.ink
//                    ^ keyword.operator.assignment.ink
//                     ^ source.ink
//                      ^^^^^ variable.other.ink
//                           ^ source.ink
//                            ^ source.ink
//                             ^^^^^^^ variable.other.ink
//                                    ^ source.ink
//                                     ^ source.ink
//                                      ^^^^^^^^^^ variable.other.ink
//                                                ^ source.ink
//                                                 ^ source.ink
//                                                  ^^^^^^ variable.other.ink
//                                                        ^ source.ink
//                                                         ^ source.ink
//                                                          ^^^^^^ variable.other.ink
LIST DoctorsInSurgery = (Adams), (Bernard), (Cartwright), (Denver), (Eamonn) // Test comment
//<---- storage.type.ink storage.type.list.ink
//  ^ source.ink
//   ^^^^^^^^^^^^^^^^ variable.other.ink
//                   ^ source.ink
//                    ^ keyword.operator.assignment.ink
//                     ^^ source.ink
//                       ^^^^^ variable.other.ink
//                            ^^^^ source.ink
//                                ^^^^^^^ variable.other.ink
//                                       ^^^^ source.ink
//                                           ^^^^^^^^^^ variable.other.ink
//                                                     ^^^^ source.ink
//                                                         ^^^^^^ variable.other.ink
//                                                               ^^^^ source.ink
//                                                                   ^^^^^^ variable.other.ink
//                                                                         ^^ source.ink
//                                                                           ^^ comment.line.ink punctuation.definition.comment.ink
//                                                                             ^^^^^^^^^^^^^ comment.line.ink
LIST DoctorsInSurgery = (Adams), Bernard, (Cartwright), Denver, Eamonn
//<---- storage.type.ink storage.type.list.ink
//  ^ source.ink
//   ^^^^^^^^^^^^^^^^ variable.other.ink
//                   ^ source.ink
//                    ^ keyword.operator.assignment.ink
//                     ^^ source.ink
//                       ^^^^^ variable.other.ink
//                            ^^ source.ink
//                              ^ source.ink
//                               ^^^^^^^ variable.other.ink
//                                      ^^^ source.ink
//                                         ^^^^^^^^^^ variable.other.ink
//                                                   ^^ source.ink
//                                                     ^ source.ink
//                                                      ^^^^^^ variable.other.ink
//                                                            ^ source.ink
//                                                             ^ source.ink
//                                                              ^^^^^^ variable.other.ink
LIST primeNumbers = (two = 2), (three) = 3, (five = 5) /*
//<---- storage.type.ink storage.type.list.ink
//  ^ source.ink
//   ^^^^^^^^^^^^ variable.other.ink
//               ^ source.ink
//                ^ keyword.operator.assignment.ink
//                 ^^ source.ink
//                   ^^^ variable.other.ink
//                      ^ source.ink
//                       ^ keyword.operator.assignment.ink
//                        ^ source.ink
//                         ^ constant.numeric.ink
//                          ^^^^ source.ink
//                              ^^^^^ variable.other.ink
//                                   ^^ source.ink
//                                     ^ keyword.operator.assignment.ink
//                                      ^ source.ink
//                                       ^ constant.numeric.ink
//                                        ^^^ source.ink
//                                           ^^^^ variable.other.ink
//                                               ^ source.ink
//                                                ^ keyword.operator.assignment.ink
//                                                 ^ source.ink
//                                                  ^ constant.numeric.ink
//                                                   ^^ source.ink
//                                                     ^^ comment.block.ink punctuation.definition.comment.ink
    test comment
//<---------------- comment.block.ink
*/
//<-- comment.block.ink punctuation.definition.comment.ink
