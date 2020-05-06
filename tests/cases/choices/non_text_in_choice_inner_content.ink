// SYNTAX TEST "source.ink"

-> knot
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^ variable.other.knot.ink
== knot
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^ entity.name.function.ink
   *   option text[]. {true: Conditional bit.} -> next
//<--- source.ink
// ^ keyword.choice.ink keyword.operator.arithmetic.ink
//  ^^^^^^^^^^^^^^ source.ink
//                ^ keyword.choice.suppression.ink keyword.control.ink
//                 ^ keyword.choice.suppression.ink keyword.control.ink
//                  ^^ source.ink
//                    ^ keyword.control.ink
//                     ^^^^^ keyword.control.ink
//                          ^ source.ink
//                           ^^^^^^^^^^^^^^^^ source.ink
//                                           ^ keyword.control.ink
//                                            ^ source.ink
//                                             ^^ keyword.divert.ink keyword.other.ink
//                                               ^ source.ink
//                                                ^^^^ variable.other.knot.ink
   -> DONE
//<--- source.ink
// ^^ keyword.divert.ink keyword.other.ink
//   ^ source.ink
//    ^^^^ support.constant.ink
== next
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^ entity.name.function.ink
    Next.
//<--------- source.ink
    -> DONE
//<---- source.ink
//  ^^ keyword.divert.ink keyword.other.ink
//    ^ source.ink
//     ^^^^ support.constant.ink
