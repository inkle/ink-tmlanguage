// SYNTAX TEST "source.ink"

-> f ->
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^ variable.other.knot.ink
//  ^ source.ink
//   ^^ keyword.divert.ink keyword.other.ink
<> world
//<-- keyword.glue.ink keyword.other.ink
//^^^^^^^ source.ink
== f ==
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^ entity.name.function.ink
//  ^ source.ink
//   ^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
Hello
//<----- source.ink
->->
//<-- keyword.divert.ink keyword.other.ink
//^^ keyword.divert.ink keyword.other.ink
