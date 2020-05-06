// SYNTAX TEST "source.ink"

-> knot.stitch.gather
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^ variable.other.knot.ink
//     ^ punctuation.accessor.ink
//      ^^^^^^ variable.other.stitch.ink
//            ^ punctuation.accessor.ink
//             ^^^^^^ variable.other.label.ink
== knot ==
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^ entity.name.function.ink
//     ^ source.ink
//      ^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
= stitch
//<- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//<~- source.ink
//^^^^^^ entity.name.function.ink
- hello
//<- keyword.gather.ink keyword.operator.arithmetic.ink
//<------ source.ink
    * (choice) test
//<---- source.ink
//  ^ keyword.choice.ink keyword.operator.arithmetic.ink
//   ^ source.ink
//    ^ string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
//     ^^^^^^ string.label.ink entity.name.label.ink string.quoted.other.ink
//           ^ string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
//            ^^^^^ source.ink
        choice content
//<---------------------- source.ink
- (gather)
//<- keyword.gather.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^ string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
// ^^^^^^ string.label.ink entity.name.label.ink string.quoted.other.ink
//       ^ string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
  gather
//<-------- source.ink
  {stopping:
//<-- source.ink
//^ keyword.control.ink
// ^^^^^^^^^ keyword.control.ink
    - -> knot.stitch.choice
//<---- source.ink
//  ^ keyword.control.ink
//   ^ source.ink
//    ^^ keyword.divert.ink keyword.other.ink
//      ^ source.ink
//       ^^^^ variable.other.knot.ink
//           ^ punctuation.accessor.ink
//            ^^^^^^ variable.other.stitch.ink
//                  ^ punctuation.accessor.ink
//                   ^^^^^^ variable.other.label.ink
    - second time round
//<---- source.ink
//  ^ keyword.control.ink
//   ^^^^^^^^^^^^^^^^^^^ source.ink
  }
//<-- source.ink
//^ keyword.control.ink
-> END
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^ support.constant.ink
