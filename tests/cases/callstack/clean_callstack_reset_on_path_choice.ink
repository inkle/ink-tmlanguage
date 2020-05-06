// SYNTAX TEST "source.ink"

{RunAThing()}
//<- keyword.control.ink
//<----------- keyword.control.ink
//          ^ keyword.control.ink
== function RunAThing ==
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^^^^^ storage.type.ink
//         ^ source.ink
//          ^^^^^^^^^ entity.name.function.ink
//                   ^ source.ink
//                    ^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
The first line.
//<--------------- source.ink
The second line.
//<---------------- source.ink
== SomewhereElse ==
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^^^^^^^^^^ entity.name.function.ink
//              ^ source.ink
//               ^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
{"somewhere else"}
//^ keyword.control.ink
//<---------------- keyword.control.ink
//               ^ keyword.control.ink
->END
//<-- keyword.divert.ink keyword.other.ink
//^^^ support.constant.ink

