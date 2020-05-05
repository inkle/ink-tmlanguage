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
//<----- source.ink storage.type.external.ink
//      ^ source.ink
//       ^^^^^ source.ink entity.name.function.ink
//            ^ source.ink punctuation.section.parens.begin.ink
//             ^ source.ink variable.parameter.function.ink
//              ^ source.ink punctuation.separator.ink
//               ^^^ source.ink variable.parameter.function.ink
//                  ^ source.ink punctuation.section.parens.end.ink
~ message("hello world")
//<~ source.ink keyword.logic.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^^^^^^ source.ink variable.function.ink
//       ^ source.ink
//        ^ source.ink punctuation.definition.string.begin.ink
//         ^^^^^^^^^^^ source.ink string.quoted.double.ink
//                    ^ source.ink punctuation.definition.string.end.ink
//                     ^ source.ink
{multiply(5.0, 3)}
//<- source.ink keyword.control.ink
//<~---------------- source.ink keyword.control.ink
//               ^ source.ink keyword.control.ink
{times(3, "knock ")}
//<- source.ink keyword.control.ink
//<~------------------ source.ink keyword.control.ink
//                 ^ source.ink keyword.control.ink
