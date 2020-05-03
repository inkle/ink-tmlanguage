// SYNTAX TEST "source.ink"

    { six() + two() }
//<---- source.ink
//  ^ source.ink keyword.control.ink
//   ^^^^^^^^^^^^^^^ source.ink keyword.control.ink
//                  ^ source.ink keyword.control.ink
    -> END
//<---- source.ink
//  ^^ source.ink keyword.divert.ink keyword.other.ink
//    ^ source.ink
//     ^^^ source.ink support.constant.ink
=== function six
//<--- source.ink storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
// ^ source.ink
//  ^^^^^^^^ source.ink storage.type.ink
//          ^ source.ink
//           ^^^ source.ink entity.name.function.ink
    ~ return four() + two()
//<---- source.ink
//  ^ source.ink keyword.logic.ink keyword.operator.arithmetic.ink
//   ^ source.ink
//    ^^^^^^ source.ink keyword.control.ink
//          ^ source.ink
//           ^^^^ source.ink variable.other
//               ^^^ source.ink
//                  ^ source.ink keyword.operator.arithmetic.ink
//                   ^^^^ source.ink variable.other.ink
//                       ^^ source.ink
=== function four
//<--- source.ink storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
// ^ source.ink
//  ^^^^^^^^ source.ink storage.type.ink
//          ^ source.ink
//           ^^^^ source.ink entity.name.function.ink
    ~ return two() + two()
//<---- source.ink
//  ^ source.ink keyword.logic.ink keyword.operator.arithmetic.ink
//   ^ source.ink
//    ^^^^^^ source.ink keyword.control.ink
//          ^ source.ink
//           ^^^ source.ink variable.other
//              ^^^ source.ink
//                 ^ source.ink keyword.operator.arithmetic.ink
//                  ^^^^ source.ink variable.other.ink
//                      ^^ source.ink
=== function two
//<--- source.ink storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
// ^ source.ink
//  ^^^^^^^^ source.ink storage.type.ink
//          ^ source.ink
//           ^^^ source.ink entity.name.function.ink
    ~ return 2
//<---- source.ink
//  ^ source.ink keyword.logic.ink keyword.operator.arithmetic.ink
//   ^ source.ink
//    ^^^^^^ source.ink keyword.control.ink
//          ^ source.ink
//           ^ source.ink constant.numeric.ink
