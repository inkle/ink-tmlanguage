// SYNTAX TEST "source.ink"

    { six() + two() }
//<---- source.ink
//  ^ keyword.control.ink
//   ^^^^^^^^^^^^^^^ keyword.control.ink
//                  ^ keyword.control.ink
    -> END
//<---- source.ink
//  ^^ keyword.divert.ink keyword.other.ink
//    ^ source.ink
//     ^^^ support.constant.ink
=== function six
//<--- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
// ^ source.ink
//  ^^^^^^^^ storage.type.ink
//          ^ source.ink
//           ^^^ entity.name.function.ink
    ~ return four() + two()
//<---- source.ink
//  ^ keyword.logic.ink keyword.operator.arithmetic.ink
//   ^ source.ink
//    ^^^^^^ keyword.control.ink
//          ^ source.ink
//           ^^^^ variable.function.ink
//               ^  punctuation.section.parens.begin.ink
//                ^  punctuation.section.parens.end.ink
//                 ^ source.ink
//                  ^ keyword.operator.arithmetic.ink
//                   ^ source.ink
//                    ^^^ variable.function.ink
//                       ^  punctuation.section.parens.begin.ink
//                        ^  punctuation.section.parens.end.ink
=== function four
//<--- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
// ^ source.ink
//  ^^^^^^^^ storage.type.ink
//          ^ source.ink
//           ^^^^ entity.name.function.ink
    ~ return two() + two()
//<---- source.ink
//  ^ keyword.logic.ink keyword.operator.arithmetic.ink
//   ^ source.ink
//    ^^^^^^ keyword.control.ink
//          ^ source.ink
//           ^^^ variable.function.ink
//              ^  punctuation.section.parens.begin.ink
//               ^  punctuation.section.parens.end.ink
//                ^ source.ink
//                 ^ keyword.operator.arithmetic.ink
//                  ^ source.ink
//                   ^^^ variable.function.ink
//                      ^  punctuation.section.parens.begin.ink
//                       ^  punctuation.section.parens.end.ink
=== function two
//<--- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
// ^ source.ink
//  ^^^^^^^^ storage.type.ink
//          ^ source.ink
//           ^^^ entity.name.function.ink
    ~ return 2
//<---- source.ink
//  ^ keyword.logic.ink keyword.operator.arithmetic.ink
//   ^ source.ink
//    ^^^^^^ keyword.control.ink
//          ^ source.ink
//           ^ constant.numeric.ink
