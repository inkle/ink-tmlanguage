// SYNTAX TEST "source.ink"

VAR x = ->knot
//<--- source.ink storage.type.ink storage.type.var.ink
// ^ source.ink
//  ^ source.ink variable.other.ink
//   ^ source.ink
//    ^ source.ink keyword.operator.assignment.ink
//     ^ source.ink
//      ^^ source.ink keyword.divert.ink keyword.other.ink
//        ^^^^ source.ink variable.other.knot.ink
Count start: {READ_COUNT (x)} {READ_COUNT (-> knot)} {knot}
//<------------- source.ink
//           ^ source.ink keyword.control.ink
//            ^^^^^^^^^^^^^^ source.ink keyword.control.ink
//                          ^ source.ink keyword.control.ink
//                           ^ source.ink
//                            ^ source.ink keyword.control.ink
//                             ^^^^^^^^^^^^^^^^^^^^ source.ink keyword.control.ink
//                                                 ^ source.ink keyword.control.ink
//                                                  ^ source.ink
//                                                   ^ source.ink keyword.control.ink
//                                                    ^^^^ source.ink variable.other.ink
//                                                        ^ source.ink keyword.control.ink
-> x (1) ->
//<-- source.ink keyword.divert.ink keyword.other.ink
//^ source.ink
// ^ source.ink variable.other.knot.ink
//  ^^^ source.ink
//     ^ source.ink
//      ^ source.ink
//       ^^ source.ink keyword.divert.ink keyword.other.ink
-> x (2) ->
//<-- source.ink keyword.divert.ink keyword.other.ink
//^ source.ink
// ^ source.ink variable.other.knot.ink
//  ^^^ source.ink
//     ^ source.ink
//      ^ source.ink
//       ^^ source.ink keyword.divert.ink keyword.other.ink
-> x (3) ->
//<-- source.ink keyword.divert.ink keyword.other.ink
//^ source.ink
// ^ source.ink variable.other.knot.ink
//  ^^^ source.ink
//     ^ source.ink
//      ^ source.ink
//       ^^ source.ink keyword.divert.ink keyword.other.ink
Count end: {READ_COUNT (x)} {READ_COUNT (-> knot)} {knot}
//<----------- source.ink
//         ^ source.ink keyword.control.ink
//          ^^^^^^^^^^^^^^ source.ink keyword.control.ink
//                        ^ source.ink keyword.control.ink
//                         ^ source.ink
//                          ^ source.ink keyword.control.ink
//                           ^^^^^^^^^^^^^^^^^^^^ source.ink keyword.control.ink
//                                               ^ source.ink keyword.control.ink
//                                                ^ source.ink
//                                                 ^ source.ink keyword.control.ink
//                                                  ^^^^ source.ink variable.other.ink
//                                                      ^ source.ink keyword.control.ink
-> END
//<-- source.ink keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^ source.ink support.constant.ink
== knot (a) ==
//<-- source.ink storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^ source.ink entity.name.function.ink
//     ^ source.ink
//      ^ source.ink punctuation.section.parens.begin.ink
//       ^ source.ink variable.parameter.function.ink
//        ^ source.ink punctuation.section.parens.end.ink
//         ^ source.ink
//          ^^ source.ink storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
{a}
//<- source.ink keyword.control.ink
//<~- source.ink variable.other.ink
//^ source.ink keyword.control.ink
->->
//<-- source.ink keyword.divert.ink keyword.other.ink
//^^ source.ink keyword.divert.ink keyword.other.ink
