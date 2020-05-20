// SYNTAX TEST "source.ink"

EXTERNAL message(x)
//<----- storage.type.external.ink
//      ^ source.ink
//       ^^^^^^^ entity.name.function.ink
//              ^ punctuation.section.parens.begin.ink
//               ^ variable.parameter.function.ink
//                ^ punctuation.section.parens.end.ink
EXTERNAL multiply(x,y)
//<----- storage.type.external.ink
//      ^ source.ink
//       ^^^^^^^^ entity.name.function.ink
//               ^ punctuation.section.parens.begin.ink
//                ^ variable.parameter.function.ink
//                 ^ punctuation.separator.ink
//                  ^ variable.parameter.function.ink
//                   ^ punctuation.section.parens.end.ink
EXTERNAL times(i,str)
//<----- storage.type.external.ink
//      ^ source.ink
//       ^^^^^ entity.name.function.ink
//            ^ punctuation.section.parens.begin.ink
//             ^ variable.parameter.function.ink
//              ^ punctuation.separator.ink
//               ^^^ variable.parameter.function.ink
//                  ^ punctuation.section.parens.end.ink
~ message("hello world")
//<~ keyword.logic.ink
//<~- source.ink
//^^^^^^^ variable.function.ink
//       ^ source.ink
//        ^ punctuation.definition.string.begin.ink
//         ^^^^^^^^^^^ string.quoted.double.ink
//                    ^ punctuation.definition.string.end.ink
//                     ^ source.ink
{multiply(5.0, 3)}
//<- keyword.control.ink
//<~---------------- keyword.control.ink
//               ^ keyword.control.ink
{times(3, "knock ")}
//<- keyword.control.ink
//<~------------------ keyword.control.ink
//                 ^ keyword.control.ink
