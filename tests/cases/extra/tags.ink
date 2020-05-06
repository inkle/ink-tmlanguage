// SYNTAX TEST "source.ink"

* [Hi] Hello -> END #hey
//<- keyword.choice.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^ keyword.choice.suppression.ink keyword.control.ink
// ^^ source.ink
//   ^ keyword.choice.suppression.ink keyword.control.ink
//    ^^^^^^ source.ink
//          ^ source.ink
//           ^^ keyword.divert.ink keyword.other.ink
//             ^ source.ink
//              ^^^ support.constant.ink
//                 ^ source.ink
//                  ^ string.quoted.other.ink entity.tag.ink punctuation.definition.comment.ink comment.line.ink entity.tag.begin.ink
//                   ^^^ string.quoted.other.ink entity.tag.ink

* { test } visible choice #hey
//<- keyword.choice.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^ keyword.control.ink
// ^^^^^^ keyword.control.ink
//       ^ keyword.control.ink
//        ^^^^^^^^^^^^^^^ source.ink
//                       ^ source.ink
//                        ^ string.quoted.other.ink entity.tag.ink punctuation.definition.comment.ink comment.line.ink entity.tag.begin.ink
//                         ^^^ string.quoted.other.ink entity.tag.ink

*   (firstOpt) [First choice]   #tag
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
//                              ^ string.quoted.other.ink entity.tag.ink punctuation.definition.comment.ink comment.line.ink entity.tag.begin.ink
//                               ^^^ string.quoted.other.ink entity.tag.ink

VAR x = 2
//<--- storage.type.ink storage.type.var.ink
// ^ source.ink
//  ^ variable.other.ink
//   ^ source.ink
//    ^ keyword.operator.assignment.ink
//     ^ source.ink
//      ^ constant.numeric.ink
# author: Joe
//<- string.quoted.other.ink entity.tag.ink punctuation.definition.comment.ink comment.line.ink entity.tag.begin.ink
//<------------ string.quoted.other.ink entity.tag.ink
# title: My Great Story
//<- string.quoted.other.ink entity.tag.ink punctuation.definition.comment.ink comment.line.ink entity.tag.begin.ink
//<---------------------- string.quoted.other.ink entity.tag.ink
This is the content
//<------------------- source.ink
== knot ==
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^ entity.name.function.ink
//     ^ source.ink
//      ^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
# knot tag
//<- string.quoted.other.ink entity.tag.ink punctuation.definition.comment.ink comment.line.ink entity.tag.begin.ink
//<--------- string.quoted.other.ink entity.tag.ink
Knot content
//<------------ source.ink
# end of knot tag
//<- string.quoted.other.ink entity.tag.ink punctuation.definition.comment.ink comment.line.ink entity.tag.begin.ink
//<---------------- string.quoted.other.ink entity.tag.ink
-> END
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^ support.constant.ink
= stitch
//<- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//<~- source.ink
//^^^^^^ entity.name.function.ink
# stitch tag
//<- string.quoted.other.ink entity.tag.ink punctuation.definition.comment.ink comment.line.ink entity.tag.begin.ink
//<----------- string.quoted.other.ink entity.tag.ink
Stitch content
//<-------------- source.ink
# this tag is below some content so isn't included in the static tags for the stitch
//<- string.quoted.other.ink entity.tag.ink punctuation.definition.comment.ink comment.line.ink entity.tag.begin.ink
//<----------------------------------------------------------------------------------- string.quoted.other.ink entity.tag.ink
-> END
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^ support.constant.ink
