// SYNTAX TEST "source.ink"

-> first
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^^ variable.other.knot.ink
== first ==
//<-- storage.knot.ink storage.type.ink
//^ source.ink
// ^^^^^ entity.name.function.ink
//      ^ source.ink
//       ^^ storage.knot.ink storage.type.ink
1) Seen first {first} times.
//<-------------- source.ink
//            ^ keyword.control.ink
//            ^^^^^^ keyword.control.ink
//                  ^ keyword.control.ink
//                   ^^^^^^^^ source.ink
-> second ->
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^^^ variable.other.knot.ink
//       ^ source.ink
//        ^^ keyword.divert.ink keyword.other.ink
2) Seen first {first} times.
//<-------------- source.ink
//            ^ keyword.control.ink
//             ^^^^^ keyword.control.ink
//                  ^ keyword.control.ink
//                   ^^^^^^^^ source.ink
-> DONE
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^ support.constant.ink
== second ==
//<-- storage.knot.ink storage.type.ink
//^ source.ink
// ^^^^^^ entity.name.function.ink
//       ^ source.ink
//        ^^ storage.knot.ink storage.type.ink
In second.
//<---------- source.ink
->->
//<-- keyword.divert.ink keyword.other.ink
//^^ keyword.divert.ink keyword.other.ink
