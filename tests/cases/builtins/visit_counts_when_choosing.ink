// SYNTAX TEST "source.ink"

== TestKnot ==
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^^^^^ entity.name.function.ink
//         ^ source.ink
//          ^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
this is a test
//<-------------- source.ink
+ [Next] -> TestKnot2
//<- keyword.choice.sticky.ink keyword.operator.arithmetic.ink
//^ keyword.choice.suppression.ink keyword.control.ink
// ^^^^ source.ink
//     ^ keyword.choice.suppression.ink keyword.control.ink
//      ^ source.ink
//       ^^ keyword.divert.ink keyword.other.ink
//         ^ source.ink
//          ^^^^^^^^^ variable.other.knot.ink
== TestKnot2 ==
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^^^^^^ entity.name.function.ink
//          ^ source.ink
//           ^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
this is the end
//<--------------- source.ink
-> END
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^ support.constant.ink
