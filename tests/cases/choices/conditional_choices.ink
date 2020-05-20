// SYNTAX TEST "source.ink"

* { true } { false } not displayed
//<- keyword.choice.ink
//^ keyword.control.ink
// ^^^^^^ keyword.control.ink
//       ^ keyword.control.ink
//         ^ keyword.control.ink
//          ^^^^^^^ keyword.control.ink
//                 ^ keyword.control.ink
//                  ^^^^^^^^^^^^^^^ source.ink
* { true } { true }
//<- keyword.choice.ink
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
//<- keyword.choice.ink
//^ keyword.control.ink
// ^^^^^^^ keyword.control.ink
//        ^ keyword.control.ink
//         ^^^^^^^^^^^^^^^ source.ink
* (name) { true } two
//<- keyword.choice.ink
//^ string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
// ^^^^ string.label.ink entity.name.label.ink string.quoted.other.ink
//     ^ string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
//       ^ keyword.control.ink
//        ^^^^^^ keyword.control.ink
//              ^ keyword.control.ink
//               ^^^^^ source.ink
* { true }
//<- keyword.choice.ink
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
//<- keyword.choice.ink
//^ keyword.control.ink
// ^^^^^^ keyword.control.ink
//       ^ keyword.control.ink
  four
//<------- source.ink
