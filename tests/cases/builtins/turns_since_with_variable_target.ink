// SYNTAX TEST "source.ink"

-> start
//<-- source.ink keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^^ source.ink variable.other.knot.ink
=== start ===
//<--- source.ink storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
// ^ source.ink
//  ^^^^^ source.ink entity.name.function.ink
//       ^ source.ink
//        ^^^ source.ink storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
    {beats(-> start)}
//<---- source.ink
//  ^ source.ink keyword.control.ink
//   ^^^^^^^^^^^^^^^ source.ink keyword.control.ink
//                  ^ source.ink keyword.control.ink
    {beats(-> start)}
//<---- source.ink
//  ^ source.ink keyword.control.ink
//   ^^^^^^^^^^^^^^^ source.ink keyword.control.ink
//                  ^ source.ink keyword.control.ink
    *   [Choice]  -> next
//<---- source.ink
//  ^^^^ source.ink keyword.choice.ink keyword.operator.arithmetic.ink
//      ^ source.ink keyword.choice.suppression.ink keyword.control.ink
//       ^^^^^^ source.ink
//             ^ source.ink keyword.choice.suppression.ink keyword.control.ink
//              ^^ source.ink
//                ^^ source.ink keyword.divert.ink keyword.other.ink
//                  ^ source.ink
//                   ^^^^ source.ink variable.other.knot.ink
= next
//<- source.ink storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//<~- source.ink
//^^^^ source.ink entity.name.function.ink
    {beats(-> start)}
//<---- source.ink
//  ^ source.ink keyword.control.ink
//   ^^^^^^^^^^^^^^^ source.ink keyword.control.ink
//                  ^ source.ink keyword.control.ink
    -> END
//<---- source.ink
//  ^^ source.ink keyword.divert.ink keyword.other.ink
//    ^ source.ink
//     ^^^ source.ink support.constant.ink
=== function beats(x) ===
//<--- source.ink storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
// ^ source.ink
//  ^^^^^^^^ source.ink storage.type.ink
//          ^ source.ink
//           ^^^^^ source.ink entity.name.function.ink
//                ^ source.ink punctuation.section.parens.begin.ink
//                 ^ source.ink variable.parameter.function.ink
//                  ^ source.ink punctuation.section.parens.end.ink
//                   ^ source.ink
//                    ^^^ source.ink storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
    ~ return TURNS_SINCE(x)
//<---- source.ink
//  ^ source.ink keyword.logic.ink keyword.operator.arithmetic.ink
//   ^ source.ink
//    ^^^^^^ source.ink keyword.control.ink
//          ^ source.ink
//           ^^^^^^^^^^^ source.ink variable.language.ink
//                      ^ source.ink meta.parens punctuation.section.parens.begin.ink
//                       ^ source.ink variable.other.ink
//                        ^ source.ink meta.parens punctuation.section.parens.end.ink
