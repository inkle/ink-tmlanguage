// SYNTAX TEST "source.ink"

* { not test } visible choice
//<- keyword.choice.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^ keyword.control.ink
// ^^^^^^^^^^ keyword.control.ink
//           ^ keyword.control.ink
//            ^^^^^^^^^^^^^^^ source.ink
* { test } visible choice
//<- keyword.choice.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^ keyword.control.ink
// ^^^^^^ keyword.control.ink
//       ^ keyword.control.ink
//        ^^^^^^^^^^^^^^^ source.ink
== test ==
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^ entity.name.function.ink
//     ^ source.ink
//      ^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
-> END
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^ support.constant.ink
