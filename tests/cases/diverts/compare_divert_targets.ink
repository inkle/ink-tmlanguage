// SYNTAX TEST "source.ink"

VAR to_one = -> one
//<--- storage.type.ink storage.type.var.ink
// ^ source.ink
//  ^^^^^^ variable.other.ink
//        ^ source.ink
//         ^ keyword.operator.assignment.ink
//          ^ source.ink
//           ^^ keyword.divert.ink keyword.other.ink
//             ^ source.ink
//              ^^^ variable.other.knot.ink
VAR to_two = -> two
//<--- storage.type.ink storage.type.var.ink
// ^ source.ink
//  ^^^^^^ variable.other.ink
//        ^ source.ink
//         ^ keyword.operator.assignment.ink
//          ^ source.ink
//           ^^ keyword.divert.ink keyword.other.ink
//             ^ source.ink
//              ^^^ variable.other.knot.ink
{to_one == to_two:same knot|different knot}
//<- keyword.control.ink
//<----------------- keyword.control.ink
//                ^^^^^^^^^ source.ink
//                         ^ keyword.control.ink
//                          ^^^^^^^^^^^^^^ source.ink
//                                        ^ keyword.control.ink
{to_one == to_one:same knot|different knot}
//<- keyword.control.ink
//<----------------- keyword.control.ink
//                ^^^^^^^^^ source.ink
//                         ^ keyword.control.ink
//                          ^^^^^^^^^^^^^^ source.ink
//                                        ^ keyword.control.ink
{to_two == to_two:same knot|different knot}
//<- keyword.control.ink
//<----------------- keyword.control.ink
//                ^^^^^^^^^ source.ink
//                         ^ keyword.control.ink
//                          ^^^^^^^^^^^^^^ source.ink
//                                        ^ keyword.control.ink
{ -> one == -> two:same knot|different knot}
//<- keyword.control.ink
//<------------------ keyword.control.ink
//                 ^^^^^^^^^ source.ink
//                          ^ keyword.control.ink
//                           ^^^^^^^^^^^^^^ source.ink
//                                         ^ keyword.control.ink
{ -> one == to_one:same knot|different knot}
//<- keyword.control.ink
//<----------------- keyword.control.ink
//                 ^^^^^^^^^ source.ink
//                          ^ keyword.control.ink
//                           ^^^^^^^^^^^^^^ source.ink
//                                         ^ keyword.control.ink
{ to_one == -> one:same knot|different knot}
//<- keyword.control.ink
//<----------------- keyword.control.ink
//                 ^^^^^^^^^ source.ink
//                          ^ keyword.control.ink
//                           ^^^^^^^^^^^^^^ source.ink
//                                         ^ keyword.control.ink
== one
//<-- storage.knot.ink storage.type.ink
//^ source.ink
// ^^^ entity.name.function.ink
    One
//<------ source.ink
    -> DONE
//<---- source.ink
//  ^^ keyword.divert.ink keyword.other.ink
//    ^ source.ink
//     ^^^^ support.constant.ink
=== two
//<--- storage.knot.ink storage.type.ink
// ^ source.ink
//  ^^^ entity.name.function.ink
    Two
//<------- source.ink
    -> DONE
//<---- source.ink
//  ^^ keyword.divert.ink keyword.other.ink
//    ^ source.ink
//     ^^^^ support.constant.ink
