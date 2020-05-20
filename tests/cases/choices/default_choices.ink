// SYNTAX TEST "source.ink"

 - (start)
//<~- keyword.gather.ink
// ^ string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
//  ^^^^^ string.label.ink entity.name.label.ink string.quoted.other.ink
//       ^ string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
 * [Choice 1]
//<~- keyword.choice.ink
// ^ keyword.choice.suppression.ink keyword.control.ink
//  ^^^^^^^^ source.ink
//          ^ keyword.choice.suppression.ink keyword.control.ink
 * [Choice 2]
//<~- keyword.choice.ink
// ^ keyword.choice.suppression.ink keyword.control.ink
//  ^^^^^^^^ source.ink
//          ^ keyword.choice.suppression.ink keyword.control.ink
 * {false} Impossible choice
//<~- keyword.choice.ink
// ^ keyword.control.ink
//  ^^^^^ keyword.control.ink
//       ^ keyword.control.ink
//        ^^^^^^^^^^^^^^^^^^^ source.ink
 * -> default
//<~- keyword.choice.ink
// ^^ keyword.divert.ink keyword.other.ink
//   ^ source.ink
//    ^^^^^^^ variable.other.knot.ink
 - After choice
//<~- keyword.gather.ink
// ^^^^^^^^^^^^^ source.ink
 -> start
//<- source.ink
//<~-- keyword.divert.ink keyword.other.ink
// ^ source.ink
//  ^^^^^ variable.other.knot.ink
== default ==
//<-- storage.knot.ink storage.type.ink
//^ source.ink
// ^^^^^^^ entity.name.function.ink
//        ^ source.ink
//         ^^ storage.knot.ink storage.type.ink
This is default.
//<---------------- source.ink
-> DONE
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^ support.constant.ink
