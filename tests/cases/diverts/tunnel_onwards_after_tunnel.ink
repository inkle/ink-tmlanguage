// SYNTAX TEST "source.ink"

-> tunnel1 ->
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^^^^ variable.other.knot.ink
//        ^ source.ink
//         ^^ keyword.divert.ink keyword.other.ink
The End.
//<-------- source.ink
-> END
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^ support.constant.ink
== tunnel1 ==
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^^^^ entity.name.function.ink
//        ^ source.ink
//         ^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
Hello...
//<-------- source.ink
-> tunnel2 ->->
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^^^^ variable.other.knot.ink
//        ^ source.ink
//         ^^ keyword.divert.ink keyword.other.ink
//           ^^ keyword.divert.ink keyword.other.ink
== tunnel2 ==
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^^^^ entity.name.function.ink
//        ^ source.ink
//         ^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
...world.
//<--------- source.ink
->->
//<-- keyword.divert.ink keyword.other.ink
//^^ keyword.divert.ink keyword.other.ink
