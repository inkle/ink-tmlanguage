// SYNTAX TEST "source.ink"

-> start
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^^ variable.other.knot.ink
=== start ===
//<--- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
// ^ source.ink
//  ^^^^^ entity.name.function.ink
//       ^ source.ink
//        ^^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
    {beats(-> start)}
//<---- source.ink
//  ^ keyword.control.ink
//   ^^^^^^^^^^^^^^^ keyword.control.ink
//                  ^ keyword.control.ink
    {beats(-> start)}
//<---- source.ink
//  ^ keyword.control.ink
//   ^^^^^^^^^^^^^^^ keyword.control.ink
//                  ^ keyword.control.ink
    *   [Choice]  -> next
//<---- source.ink
//  ^    keyword.choice.ink keyword.operator.arithmetic.ink
//      ^ keyword.choice.suppression.ink keyword.control.ink
//       ^^^^^^ source.ink
//             ^ keyword.choice.suppression.ink keyword.control.ink
//              ^^ source.ink
//                ^^ keyword.divert.ink keyword.other.ink
//                  ^ source.ink
//                   ^^^^ variable.other.knot.ink
= next
//<- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//<~- source.ink
//^^^^ entity.name.function.ink
    {beats(-> start)}
//<---- source.ink
//  ^ keyword.control.ink
//   ^^^^^^^^^^^^^^^ keyword.control.ink
//                  ^ keyword.control.ink
    -> END
//<---- source.ink
//  ^^ keyword.divert.ink keyword.other.ink
//    ^ source.ink
//     ^^^ support.constant.ink
=== function beats(x) ===
//<--- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
// ^ source.ink
//  ^^^^^^^^ storage.type.ink
//          ^ source.ink
//           ^^^^^ entity.name.function.ink
//                ^ punctuation.section.parens.begin.ink
//                 ^ variable.parameter.function.ink
//                  ^ punctuation.section.parens.end.ink
//                   ^ source.ink
//                    ^^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
    ~ return TURNS_SINCE(x)
//<---- source.ink
//  ^ keyword.logic.ink keyword.operator.arithmetic.ink
//   ^ source.ink
//    ^^^^^^ keyword.control.ink
//          ^ source.ink
//           ^^^^^^^^^^^ constant.language.ink
//                      ^  punctuation.section.parens.begin.ink
//                       ^ variable.other.ink
//                        ^  punctuation.section.parens.end.ink
