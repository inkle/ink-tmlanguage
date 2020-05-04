// SYNTAX TEST "source.ink"

* { true } { false } not displayed
//<- source.ink keyword.choice.ink keyword.operator.arithmetic.ink
//^ keyword.control.ink
// ^^^^^^ keyword.control.ink
//       ^ keyword.control.ink
//         ^ keyword.control.ink
//          ^^^^^^^ keyword.control.ink
//                 ^ keyword.control.ink
//                  ^^^^^^^^^^^^^^^ source.ink
* { true } { true }
//<- source.ink keyword.choice.ink keyword.operator.arithmetic.ink
//^ keyword.control.ink
// ^^^^^^ keyword.control.ink
//       ^ keyword.control.ink
//         ^ keyword.control.ink
//          ^^^^^^ keyword.control.ink
//                ^ keyword.control.ink
  { true and true }  one
//<-- source.ink
//^ keyword.control.ink
// ^^^^^^^^^^^^^^^ keyword.control.ink
//                ^ keyword.control.ink
//                 ^^^^^^ source.ink
* { false } not displayed
//<- source.ink keyword.choice.ink keyword.operator.arithmetic.ink
//^ keyword.control.ink
// ^^^^^^^ keyword.control.ink
//        ^ keyword.control.ink
//         ^^^^^^^^^^^^^^^ source.ink
* (name) { true } two
//<- source.ink keyword.choice.ink keyword.operator.arithmetic.ink
//^ source.ink string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
// ^^^^ source.ink string.label.ink entity.name.label.ink string.quoted.other.ink
//     ^ source.ink string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
//       ^ keyword.control.ink
//        ^^^^^^ keyword.control.ink
//              ^ keyword.control.ink
//               ^^^^^ source.ink
* { true }
//<- source.ink keyword.choice.ink keyword.operator.arithmetic.ink
//^ keyword.control.ink
// ^^^^^^ keyword.control.ink
//       ^ keyword.control.ink
  { true }
//<-- source.ink
//^ keyword.control.ink
// ^^^^^^ keyword.control.ink
//       ^ keyword.control.ink
  three
//<------- source.ink
* { true }
//<- source.ink keyword.choice.ink keyword.operator.arithmetic.ink
//^ keyword.control.ink
// ^^^^^^ keyword.control.ink
//       ^ keyword.control.ink
  four
//<------- source.ink
