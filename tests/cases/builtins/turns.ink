// SYNTAX TEST "source.ink"

-> c
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^ variable.other.knot.ink
- (top)
//<- keyword.gather.ink keyword.operator.arithmetic.ink
//^ string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
// ^^^ string.label.ink entity.name.label.ink string.quoted.other.ink
//    ^ string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
+ (c) [choice]
//<- keyword.choice.sticky.ink keyword.operator.arithmetic.ink
//^ string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
// ^ string.label.ink entity.name.label.ink string.quoted.other.ink
//  ^ string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
//   ^ source.ink
//    ^ keyword.choice.suppression.ink keyword.control.ink
//     ^^^^^^ source.ink
//           ^ keyword.choice.suppression.ink keyword.control.ink
    {TURNS ()}
//<---- source.ink
//  ^ keyword.control.ink
//   ^^^^^^^^ keyword.control.ink
//           ^ keyword.control.ink
    -> top
//<---- source.ink
//  ^^ keyword.divert.ink keyword.other.ink
//    ^ source.ink
//     ^^^ variable.other.knot.ink
