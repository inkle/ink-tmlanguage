// SYNTAX TEST "source.ink"

-> A ->
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^ variable.other.knot.ink
//  ^ source.ink
//   ^^ keyword.divert.ink keyword.other.ink
We will never return to here!
//<----------------------------- source.ink
== A ==
//<-- storage.knot.ink storage.type.ink
//^ source.ink
// ^ entity.name.function.ink
//  ^ source.ink
//   ^^ storage.knot.ink storage.type.ink
This is A
//<--------- source.ink
->-> B
//<-- keyword.divert.ink keyword.other.ink
//^^ keyword.divert.ink keyword.other.ink
//  ^ source.ink
//   ^ variable.other.knot.ink
== B ==
//<-- storage.knot.ink storage.type.ink
//^ source.ink
// ^ entity.name.function.ink
//  ^ source.ink
//   ^^ storage.knot.ink storage.type.ink
Now in B.
//<--------- source.ink
-> END
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^ support.constant.ink
