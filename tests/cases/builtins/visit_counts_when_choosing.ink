// SYNTAX TEST "source.ink"

== TestKnot ==
//<-- source.ink storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^^^^^ source.ink entity.name.function.ink
//         ^ source.ink
//          ^^ source.ink storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
this is a test
//<-------------- source.ink
+ [Next] -> TestKnot2
//<-- source.ink keyword.choice.sticky.ink keyword.operator.arithmetic.ink
//^ source.ink keyword.choice.suppression.ink keyword.control.ink
// ^^^^ source.ink
//     ^ source.ink keyword.choice.suppression.ink keyword.control.ink
//      ^ source.ink
//       ^^ source.ink keyword.divert.ink keyword.other.ink
//         ^ source.ink
//          ^^^^^^^^^ source.ink variable.other.knot.ink
== TestKnot2 ==
//<-- source.ink storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^^^^^^ source.ink entity.name.function.ink
//          ^ source.ink
//           ^^ source.ink storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
this is the end
//<--------------- source.ink
-> END
//<-- source.ink keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^ source.ink support.constant.ink
