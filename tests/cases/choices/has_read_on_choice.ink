// SYNTAX TEST "source.ink"

* { not test } visible choice
//<- keyword.choice.ink
//<~- source.ink
//^ keyword.control.ink
// ^^^^^^^^^^ keyword.control.ink
//           ^ keyword.control.ink
//            ^^^^^^^^^^^^^^^ source.ink
* { test } visible choice
//<- keyword.choice.ink
//<~- source.ink
//^ keyword.control.ink
// ^^^^^^ keyword.control.ink
//       ^ keyword.control.ink
//        ^^^^^^^^^^^^^^^ source.ink
== test ==
//<-- storage.knot.ink storage.type.ink
//^ source.ink
// ^^^^ entity.name.function.ink
//     ^ source.ink
//      ^^ storage.knot.ink storage.type.ink
-> END
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^ support.constant.ink
