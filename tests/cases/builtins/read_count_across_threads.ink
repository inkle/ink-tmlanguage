// SYNTAX TEST "source.ink"

    -> top
//<---- source.ink
//  ^^ source.ink keyword.divert.ink keyword.other.ink
//    ^ source.ink
//     ^^^ source.ink variable.other.knot.ink
= top
//<- source.ink storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//<~- source.ink
//^^^ source.ink entity.name.function.ink
    {top}
//  ^ keyword.control.ink
//   ^^^ keyword.control.ink
//      ^ keyword.control.ink
    <- aside
//  ^^ source.ink keyword.divert.ink keyword.other.ink
//    ^ source.ink
//     ^^^^^ source.ink variable.other.knot.ink
    {top}
//  ^ keyword.control.ink
//   ^^^ keyword.control.ink
//      ^ keyword.control.ink
    -> DONE
//<---- source.ink
//  ^^ source.ink keyword.divert.ink keyword.other.ink
//    ^ source.ink
//     ^^^^ source.ink support.constant.ink
= aside
//<- source.ink storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//<~- source.ink
//^^^^^ source.ink entity.name.function.ink
    * {false} DONE
//<---- source.ink
//  ^  source.ink keyword.choice.ink keyword.operator.arithmetic.ink
//    ^ keyword.control.ink
//     ^^^^^ keyword.control.ink
//          ^ keyword.control.ink
//           ^^^^^^ source.ink
    - -> DONE
//<---- source.ink
//  ^  source.ink keyword.gather.ink keyword.operator.arithmetic.ink
//    ^^ source.ink keyword.divert.ink keyword.other.ink
//      ^ source.ink
//       ^^^^ source.ink support.constant.ink
