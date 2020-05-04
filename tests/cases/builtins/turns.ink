// SYNTAX TEST "source.ink"

-> c
//<-- source.ink keyword.divert.ink keyword.other.ink
//^ source.ink
// ^ source.ink variable.other.knot.ink
- (top)
//<- source.ink keyword.gather.ink keyword.operator.arithmetic.ink
//^ source.ink string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
// ^^^ source.ink string.label.ink entity.name.label.ink string.quoted.other.ink
//    ^ source.ink string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
+ (c) [choice]
//<- source.ink keyword.choice.sticky.ink keyword.operator.arithmetic.ink
//^ source.ink string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
// ^ source.ink string.label.ink entity.name.label.ink string.quoted.other.ink
//  ^ source.ink string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
//   ^ source.ink
//    ^ source.ink keyword.choice.suppression.ink keyword.control.ink
//     ^^^^^^ source.ink
//           ^ source.ink keyword.choice.suppression.ink keyword.control.ink
    {TURNS ()}
//<---- source.ink
//  ^ source.ink keyword.control.ink
//   ^^^^^^^^ source.ink keyword.control.ink
//           ^ source.ink keyword.control.ink
    -> top
//<---- source.ink
//  ^^ source.ink keyword.divert.ink keyword.other.ink
//    ^ source.ink
//     ^^^ source.ink variable.other.knot.ink
