// SYNTAX TEST "source.ink"

-> hi ->
//<-- source.ink keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^ source.ink variable.other.knot.ink
//   ^ source.ink
//    ^^ source.ink keyword.divert.ink keyword.other.ink
-> hi ->
//<-- source.ink keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^ source.ink variable.other.knot.ink
//   ^ source.ink
//    ^^ source.ink keyword.divert.ink keyword.other.ink
-> hi ->
//<-- source.ink keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^ source.ink variable.other.knot.ink
//   ^ source.ink
//    ^^ source.ink keyword.divert.ink keyword.other.ink
{ hi.stitch_to_count }
//<- source.ink keyword.control.ink
//<-------------------- source.ink keyword.control.ink
//                   ^ source.ink keyword.control.ink
== hi ==
//<-- source.ink storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^ source.ink entity.name.function.ink
//   ^ source.ink
//    ^^ source.ink storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
= stitch_to_count
//<- source.ink storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//<~- source.ink
//^^^^^^^^^^^^^^^ source.ink entity.name.function.ink
hi
//<-- source.ink
->->
//<-- source.ink keyword.divert.ink keyword.other.ink
//^^ source.ink keyword.divert.ink keyword.other.ink
