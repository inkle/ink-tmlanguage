// SYNTAX TEST "source.ink"

VAR x = "Hello world 1"
//<--- storage.type.ink storage.type.var.ink
// ^ source.ink
//  ^ variable.other.ink
//   ^ source.ink
//    ^ keyword.operator.assignment.ink
//     ^ source.ink
//      ^ punctuation.definition.string.begin.ink
//       ^^^^^^^^^^^^^ string.quoted.double.ink
//                    ^ punctuation.definition.string.end.ink
{x}
//<- keyword.control.ink
//<~- keyword.control.ink
//^ keyword.control.ink
Hello {"world"} 2.
//<----- source.ink
//    ^ keyword.control.ink
//     ^^^^^^^ keyword.control.ink
//            ^ keyword.control.ink
//             ^^^^ source.ink
