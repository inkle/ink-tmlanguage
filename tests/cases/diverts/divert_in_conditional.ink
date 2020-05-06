// SYNTAX TEST "source.ink"

=== intro
//<--- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
// ^ source.ink
//  ^^^^^ entity.name.function.ink
= top
//<- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//<~- source.ink
//^^^ entity.name.function.ink
    { main: -> done }
//<---- source.ink
//  ^ keyword.control.ink
//   ^^^^^^ keyword.control.ink
//         ^ source.ink
//          ^^ keyword.divert.ink keyword.other.ink
//            ^ source.ink
//             ^^^^ variable.other.knot.ink
//                 ^ source.ink
//                  ^ keyword.control.ink
    -> END
//<---- source.ink
//  ^^ keyword.divert.ink keyword.other.ink
//    ^ source.ink
//     ^^^ support.constant.ink
= main
//<- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//<~- source.ink
//^^^^ entity.name.function.ink
    -> top
//<---- source.ink
//  ^^ keyword.divert.ink keyword.other.ink
//    ^ source.ink
//     ^^^ variable.other.knot.ink
= done
//<- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//<~- source.ink
//^^^^ entity.name.function.ink
    -> END
//<---- source.ink
//  ^^ keyword.divert.ink keyword.other.ink
//    ^ source.ink
//     ^^^ support.constant.ink
