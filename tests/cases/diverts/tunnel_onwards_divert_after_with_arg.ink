// SYNTAX TEST "source.ink"

-> a ->
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^ variable.other.knot.ink
//  ^ source.ink
//   ^^ keyword.divert.ink keyword.other.ink
=== a ===
//<--- storage.knot.ink storage.type.ink
// ^ source.ink
//  ^ entity.name.function.ink
//   ^ source.ink
//    ^^^ storage.knot.ink storage.type.ink
->-> b (5 + 3)
//<-- keyword.divert.ink keyword.other.ink
//^^ keyword.divert.ink keyword.other.ink
//  ^ source.ink
//   ^ variable.function.ink
//    ^ source.ink
//     ^ punctuation.section.parens.begin.ink
//      ^ constant.numeric.ink
//       ^ source.ink
//        ^ keyword.operator.arithmetic.ink
//         ^ source.ink
//          ^ constant.numeric.ink
//           ^ punctuation.section.parens.end.ink
=== b (x) ===
//<--- storage.knot.ink storage.type.ink
// ^ source.ink
//  ^ entity.name.function.ink
//   ^ source.ink
//    ^ punctuation.section.parens.begin.ink
//     ^ variable.parameter.function.ink
//      ^ punctuation.section.parens.end.ink
//       ^ source.ink
//        ^^^ storage.knot.ink storage.type.ink
{x}
//<- keyword.control.ink
//<~- keyword.control.ink
//^ keyword.control.ink
-> END
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^ support.constant.ink
