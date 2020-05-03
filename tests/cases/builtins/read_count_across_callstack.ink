// SYNTAX TEST "source.ink"

-> first
//<-- source.ink keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^^ source.ink variable.other.knot.ink
== first ==
//<-- source.ink storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^^ source.ink entity.name.function.ink
//      ^ source.ink
//       ^^ source.ink storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
1) Seen first {first} times.
//<-------------- source.ink
//            ^ source.ink keyword.control.ink
//             ^^^^^ source.ink variable.other.ink
//                  ^ source.ink keyword.control.ink
//                   ^^^^^^^^ source.ink
-> second ->
//<-- source.ink keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^^^ source.ink variable.other.knot.ink
//       ^ source.ink
//        ^^ source.ink keyword.divert.ink keyword.other.ink
2) Seen first {first} times.
//<-------------- source.ink
//            ^ source.ink keyword.control.ink
//             ^^^^^ source.ink variable.other.ink
//                  ^ source.ink keyword.control.ink
//                   ^^^^^^^^ source.ink
-> DONE
//<-- source.ink keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^ source.ink support.constant.ink
== second ==
//<-- source.ink storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^^^ source.ink entity.name.function.ink
//       ^ source.ink
//        ^^ source.ink storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
In second.
//<---------- source.ink
->->
//<-- source.ink keyword.divert.ink keyword.other.ink
//^^ source.ink keyword.divert.ink keyword.other.ink
