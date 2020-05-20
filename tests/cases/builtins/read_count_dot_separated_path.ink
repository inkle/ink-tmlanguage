// SYNTAX TEST "source.ink"

-> hi ->
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^ variable.other.knot.ink
//   ^ source.ink
//    ^^ keyword.divert.ink keyword.other.ink
-> hi ->
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^ variable.other.knot.ink
//   ^ source.ink
//    ^^ keyword.divert.ink keyword.other.ink
-> hi ->
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^ variable.other.knot.ink
//   ^ source.ink
//    ^^ keyword.divert.ink keyword.other.ink
{ hi.stitch_to_count }
//<- keyword.control.ink
//<-------------------- keyword.control.ink
//                   ^ keyword.control.ink
== hi ==
//<-- storage.knot.ink storage.type.ink
//^ source.ink
// ^^ entity.name.function.ink
//   ^ source.ink
//    ^^ storage.knot.ink storage.type.ink
= stitch_to_count
//<- storage.knot.ink storage.type.ink
//<~- source.ink
//^^^^^^^^^^^^^^^ entity.name.function.ink
hi
//<-- source.ink
->->
//<-- keyword.divert.ink keyword.other.ink
//^^ keyword.divert.ink keyword.other.ink
