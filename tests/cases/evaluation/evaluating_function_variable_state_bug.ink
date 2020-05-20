// SYNTAX TEST "source.ink"

Start
//<----- source.ink
-> tunnel ->
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^^^ variable.other.knot.ink
//       ^ source.ink
//        ^^ keyword.divert.ink keyword.other.ink
End
//<--- source.ink
-> END
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^ support.constant.ink
== tunnel ==
//<-- storage.knot.ink storage.type.ink
//^ source.ink
// ^^^^^^ entity.name.function.ink
//       ^ source.ink
//        ^^ storage.knot.ink storage.type.ink
In tunnel.
//<---------- source.ink
->->
//<-- keyword.divert.ink keyword.other.ink
//^^ keyword.divert.ink keyword.other.ink
=== function function_to_evaluate() ===
//<--- storage.knot.ink storage.type.ink
// ^ source.ink
//  ^^^^^^^^ storage.type.ink
//          ^ source.ink
//           ^^^^^^^^^^^^^^^^^^^^ entity.name.function.ink
//                               ^ punctuation.section.parens.begin.ink
//                                ^ punctuation.section.parens.end.ink
//                                 ^ source.ink
//                                  ^^^ storage.knot.ink storage.type.ink
    { zero_equals_(1):
//<---- source.ink
//  ^ keyword.control.ink
//   ^^^^^^^^^^^^^^^^^ keyword.control.ink
        ~ return "WRONG"
//<-------- source.ink
//      ^ keyword.logic.ink
//       ^ source.ink
//        ^^^^^^ keyword.control.ink
//              ^ source.ink
//               ^ punctuation.definition.string.begin.ink
//                ^^^^^ string.quoted.double.ink
//                     ^ punctuation.definition.string.end.ink
    - else:
//<---- source.ink
//  ^ keyword.control.ink
//   ^ source.ink
//    ^^^^ keyword.control.ink
//        ^ keyword.control.ink
        ~ return "RIGHT"
//<-------- source.ink
//      ^ keyword.logic.ink
//       ^ source.ink
//        ^^^^^^ keyword.control.ink
//              ^ source.ink
//               ^ punctuation.definition.string.begin.ink
//                ^^^^^ string.quoted.double.ink
//                     ^ punctuation.definition.string.end.ink
    }
//<---- source.ink
//  ^ keyword.control.ink
=== function zero_equals_(k) ===
//<--- storage.knot.ink storage.type.ink
// ^ source.ink
//  ^^^^^^^^ storage.type.ink
//          ^ source.ink
//           ^^^^^^^^^^^^ entity.name.function.ink
//                       ^ punctuation.section.parens.begin.ink
//                        ^ variable.parameter.function.ink
//                         ^ punctuation.section.parens.end.ink
//                          ^ source.ink
//                           ^^^ storage.knot.ink storage.type.ink
    ~ do_nothing(0)
//<---- source.ink
//  ^ keyword.logic.ink
//   ^ source.ink
//    ^^^^^^^^^^ variable.function.ink
//              ^ punctuation.section.parens.begin.ink
//               ^ constant.numeric.ink
//                ^ punctuation.section.parens.end.ink
    ~ return  (0 == k)
//<---- source.ink
//  ^ keyword.logic.ink
//   ^ source.ink
//    ^^^^^^ keyword.control.ink
//          ^^ source.ink
//            ^ punctuation.section.parens.begin.ink
//             ^ constant.numeric.ink
//              ^ source.ink
//               ^^ keyword.operator.comparison.ink
//                 ^ source.ink
//                  ^ variable.other.ink
//                   ^ punctuation.section.parens.end.ink
=== function do_nothing(k)
//<--- storage.knot.ink storage.type.ink
// ^ source.ink
//  ^^^^^^^^ storage.type.ink
//          ^ source.ink
//           ^^^^^^^^^^ entity.name.function.ink
//                     ^ punctuation.section.parens.begin.ink
//                      ^ variable.parameter.function.ink
//                       ^ punctuation.section.parens.end.ink
    ~ return 0
//<---- source.ink
//  ^ keyword.logic.ink
//   ^ source.ink
//    ^^^^^^ keyword.control.ink
//          ^ source.ink
//           ^ constant.numeric.ink
