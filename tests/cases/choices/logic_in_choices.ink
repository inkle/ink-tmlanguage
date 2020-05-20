// SYNTAX TEST "source.ink"

* 'Hello {name()}[, your name is {name()}.'],' I said, knowing full well that his name was {name()}.
//<- keyword.choice.ink
//<~------- source.ink
//       ^ keyword.control.ink
//        ^^^^^^ keyword.control.ink
//              ^ keyword.control.ink
//               ^ keyword.choice.suppression.ink keyword.control.ink
//                ^^^^^^^^^^^^^^^ source.ink
//                               ^ keyword.control.ink
//                                ^^^^^^ keyword.control.ink
//                                      ^ keyword.control.ink
//                                       ^^ source.ink
//                                         ^ keyword.choice.suppression.ink keyword.control.ink
//                                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.ink
//                                                                                         ^ keyword.control.ink
//                                                                                          ^^^^^^ keyword.control.ink
//                                                                                                ^ keyword.control.ink
//                                                                                                 ^ source.ink
-> DONE
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^ support.constant.ink
== function name ==
//<-- storage.knot.ink storage.type.ink
//^ source.ink
// ^^^^^^^^ storage.type.ink
//         ^ source.ink
//          ^^^^ entity.name.function.ink
//              ^ source.ink
//               ^^ storage.knot.ink storage.type.ink
Joe
//<--- source.ink
