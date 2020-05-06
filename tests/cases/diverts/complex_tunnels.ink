// SYNTAX TEST "source.ink"

-> one (1) -> two (2) ->
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^ variable.function.ink
//    ^ source.ink
//     ^ punctuation.section.parens.begin.ink
//      ^ constant.numeric.ink
//       ^ punctuation.section.parens.end.ink
//        ^ source.ink
//         ^^ keyword.divert.ink keyword.other.ink
//           ^ source.ink
//            ^^^ variable.function.ink
//               ^ source.ink
//                ^ punctuation.section.parens.begin.ink
//                 ^ constant.numeric.ink
//                  ^ punctuation.section.parens.end.ink
//                   ^ source.ink
three (3)
//<--------- source.ink
== one(num) ==
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^ entity.name.function.ink
//    ^ punctuation.section.parens.begin.ink
//     ^^^ variable.parameter.function.ink
//        ^ punctuation.section.parens.end.ink
//         ^ source.ink
//          ^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
one ({num})
//<----- source.ink
//   ^ keyword.control.ink
//    ^^^ keyword.control.ink
//       ^ keyword.control.ink
//        ^^ source.ink
-> oneAndAHalf (1.5) ->
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^^^^^^^^ variable.function.ink
//            ^ source.ink
//             ^ punctuation.section.parens.begin.ink
//              ^^^ constant.numeric.ink
//                 ^ punctuation.section.parens.end.ink
//                  ^ source.ink
//                   ^^ keyword.divert.ink keyword.other.ink
->->
//<-- keyword.divert.ink keyword.other.ink
//^^ keyword.divert.ink keyword.other.ink
== oneAndAHalf(num) ==
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^^^^^^^^ entity.name.function.ink
//            ^ punctuation.section.parens.begin.ink
//             ^^^ variable.parameter.function.ink
//                ^ punctuation.section.parens.end.ink
//                 ^ source.ink
//                  ^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
one and a half ({num})
//<---------------- source.ink
//              ^ keyword.control.ink
//               ^^^ keyword.control.ink
//                  ^ keyword.control.ink
//                   ^^ source.ink
->->
//<-- keyword.divert.ink keyword.other.ink
//^^ keyword.divert.ink keyword.other.ink
== two (num) ==
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^ entity.name.function.ink
//    ^ source.ink
//     ^ punctuation.section.parens.begin.ink
//      ^^^ variable.parameter.function.ink
//         ^ punctuation.section.parens.end.ink
//          ^ source.ink
//           ^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
two ({num})
//<----- source.ink
//   ^ keyword.control.ink
//    ^^^ keyword.control.ink
//       ^ keyword.control.ink
//        ^^ source.ink
->->
//<-- keyword.divert.ink keyword.other.ink
//^^ keyword.divert.ink keyword.other.ink
