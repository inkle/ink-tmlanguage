// SYNTAX TEST "source.ink"

-> opts
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^ variable.other.knot.ink
= opts
//<- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//<~- source.ink
//^^^^ entity.name.function.ink
*   (firstOpt) [First choice]   ->  opts
//<- keyword.choice.ink keyword.operator.arithmetic.ink
//<~--- source.ink
//  ^ string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
//   ^^^^^^^^ string.label.ink entity.name.label.ink string.quoted.other.ink
//           ^ string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
//            ^ source.ink
//             ^ keyword.choice.suppression.ink keyword.control.ink
//              ^^^^^^^^^^^^ source.ink
//                          ^ keyword.choice.suppression.ink keyword.control.ink
//                           ^^^ source.ink
//                              ^^ keyword.divert.ink keyword.other.ink
//                                ^^ source.ink
//                                  ^^^^ variable.other.knot.ink
*   {firstOpt} [Second choice]  ->  opts
//<- keyword.choice.ink keyword.operator.arithmetic.ink
//<~--- source.ink
//  ^ keyword.control.ink
//   ^^^^^^^^ keyword.control.ink
//           ^ keyword.control.ink
//            ^ source.ink
//             ^ keyword.choice.suppression.ink keyword.control.ink
//              ^^^^^^^^^^^^^ source.ink
//                           ^ keyword.choice.suppression.ink keyword.control.ink
//                            ^^ source.ink
//                              ^^ keyword.divert.ink keyword.other.ink
//                                ^^ source.ink
//                                  ^^^^ variable.other.knot.ink
* -> end
//<- keyword.choice.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^ keyword.divert.ink keyword.other.ink
//  ^ source.ink
//   ^^^ variable.other.knot.ink
- (end)
//<- keyword.gather.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^ string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
// ^^^ string.label.ink entity.name.label.ink string.quoted.other.ink
//    ^ string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
    -> END
//<---- source.ink
//  ^^ keyword.divert.ink keyword.other.ink
//    ^ source.ink
//     ^^^ support.constant.ink
