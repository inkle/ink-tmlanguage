// SYNTAX TEST "source.ink"

VAR x = ->knot
//<--- storage.type.ink storage.type.var.ink
// ^ source.ink
//  ^ variable.other.ink
//   ^ source.ink
//    ^ keyword.operator.assignment.ink
//     ^ source.ink
//      ^^ keyword.divert.ink keyword.other.ink
//        ^^^^ variable.other.knot.ink
Count start: {READ_COUNT (x)} {READ_COUNT (-> knot)} {knot}
//<------------- source.ink
//           ^ keyword.control.ink
//            ^^^^^^^^^^^^^^^ keyword.control.ink
//                           ^ source.ink
//                            ^^^^^^^^^^^^^^^^^^^^^ keyword.control.ink
//                                                 ^ keyword.control.ink
//                                                   ^ keyword.control.ink
//                                                    ^^^^ keyword.control.ink
//                                                        ^ keyword.control.ink
-> x (1) ->
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^ variable.function.ink
//  ^^^ source.ink
//     ^ source.ink
//      ^ source.ink
//       ^^ keyword.divert.ink keyword.other.ink
-> x (2) ->
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^ variable.function.ink
//  ^^^ source.ink
//     ^ source.ink
//      ^ source.ink
//       ^^ keyword.divert.ink keyword.other.ink
-> x (3) ->
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^ variable.function.ink
//  ^^^ source.ink
//     ^ source.ink
//      ^ source.ink
//       ^^ keyword.divert.ink keyword.other.ink
Count end: {READ_COUNT (x)} {READ_COUNT (-> knot)} {knot}
//<----------- source.ink
//         ^ keyword.control.ink
//          ^^^^^^^^^^^^^^ keyword.control.ink
//                        ^ keyword.control.ink
//                         ^ source.ink
//                          ^ keyword.control.ink
//                           ^^^^^^^^^^^^^^^^^^^^ keyword.control.ink
//                                               ^ keyword.control.ink
//                                                ^ source.ink
//                                                 ^ keyword.control.ink
//                                                  ^^^^ keyword.control.ink
//                                                      ^ keyword.control.ink
-> END
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^ support.constant.ink
== knot (a) ==
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^ entity.name.function.ink
//     ^ source.ink
//      ^ punctuation.section.parens.begin.ink
//       ^ variable.parameter.function.ink
//        ^ punctuation.section.parens.end.ink
//         ^ source.ink
//          ^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
{a}
//<- keyword.control.ink
//<~- keyword.control.ink
//^ keyword.control.ink
->->
//<-- keyword.divert.ink keyword.other.ink
//^^ keyword.divert.ink keyword.other.ink
