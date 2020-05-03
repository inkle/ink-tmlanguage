// SYNTAX TEST "source.ink"

 - (start)
//<- source.ink
//<~-- source.ink keyword.gather.ink keyword.operator.arithmetic.ink
// ^ source.ink string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
//  ^^^^^ source.ink string.label.ink entity.name.label.ink string.quoted.other.ink
//       ^ source.ink string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
 * [Choice 1]
//<- source.ink
//<~-- source.ink keyword.choice.ink keyword.operator.arithmetic.ink
// ^ source.ink keyword.choice.suppression.ink keyword.control.ink
//  ^^^^^^^^ source.ink
//          ^ source.ink keyword.choice.suppression.ink keyword.control.ink
 * [Choice 2]
//<- source.ink
//<~-- source.ink keyword.choice.ink keyword.operator.arithmetic.ink
// ^ source.ink keyword.choice.suppression.ink keyword.control.ink
//  ^^^^^^^^ source.ink
//          ^ source.ink keyword.choice.suppression.ink keyword.control.ink
 * {false} Impossible choice
//<- source.ink
//<~-- source.ink keyword.choice.ink keyword.operator.arithmetic.ink
// ^ source.ink keyword.control.ink
//  ^^^^^ source.ink variable.other.ink
//       ^ source.ink keyword.control.ink
//        ^^^^^^^^^^^^^^^^^^^ source.ink
 * -> default
//<- source.ink
//<~-- source.ink keyword.choice.ink keyword.operator.arithmetic.ink
// ^^ source.ink keyword.divert.ink keyword.other.ink
//   ^ source.ink
//    ^^^^^^^ source.ink variable.other.knot.ink
 - After choice
//<- source.ink
//<~-- source.ink keyword.gather.ink keyword.operator.arithmetic.ink
// ^^^^^^^^^^^^^ source.ink
 -> start
//<- source.ink
//<~-- source.ink keyword.divert.ink keyword.other.ink
// ^ source.ink
//  ^^^^^ source.ink variable.other.knot.ink
== default ==
//<-- source.ink storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^^^^ source.ink entity.name.function.ink
//        ^ source.ink
//         ^^ source.ink storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
This is default.
//<---------------- source.ink
-> DONE
//<-- source.ink keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^ source.ink support.constant.ink
