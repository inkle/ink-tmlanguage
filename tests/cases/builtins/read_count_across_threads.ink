// SYNTAX TEST "source.ink"

    -> top
//<---- source.ink
//  ^^ keyword.divert.ink keyword.other.ink
//    ^ source.ink
//     ^^^ variable.other.knot.ink
= top
//<- storage.knot.ink storage.type.ink
//<~- source.ink
//^^^ entity.name.function.ink
    {top}
//  ^ keyword.control.ink
//   ^^^ keyword.control.ink
//      ^ keyword.control.ink
    <- aside
//  ^^ keyword.divert.ink keyword.other.ink
//    ^ source.ink
//     ^^^^^ variable.other.knot.ink
    {top}
//  ^ keyword.control.ink
//   ^^^ keyword.control.ink
//      ^ keyword.control.ink
    -> DONE
//<---- source.ink
//  ^^ keyword.divert.ink keyword.other.ink
//    ^ source.ink
//     ^^^^ support.constant.ink
= aside
//<- storage.knot.ink storage.type.ink
//<~- source.ink
//^^^^^ entity.name.function.ink
    * {false} DONE
//<---- source.ink
//  ^  keyword.choice.ink
//    ^ keyword.control.ink
//     ^^^^^ keyword.control.ink
//          ^ keyword.control.ink
//           ^^^^^^ source.ink
    - -> DONE
//<---- source.ink
//  ^  keyword.gather.ink
//    ^^ keyword.divert.ink keyword.other.ink
//      ^ source.ink
//       ^^^^ support.constant.ink
