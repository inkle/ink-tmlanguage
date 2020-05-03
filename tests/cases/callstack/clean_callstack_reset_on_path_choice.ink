// SYNTAX TEST "source.ink"

{RunAThing()}
//<- source.ink keyword.control.ink
//<----------- source.ink keyword.control.ink
//          ^ source.ink keyword.control.ink
== function RunAThing ==
//<-- source.ink storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^^^^^ source.ink storage.type.ink
//         ^ source.ink
//          ^^^^^^^^^ source.ink entity.name.function.ink
//                   ^ source.ink
//                    ^^ source.ink storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
The first line.
//<--------------- source.ink
The second line.
//<---------------- source.ink
== SomewhereElse ==
//<-- source.ink storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^^^^^^^^^^ source.ink entity.name.function.ink
//              ^ source.ink
//               ^^ source.ink storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
{"somewhere else"}
//^ source.ink keyword.control.ink
//<---------------- source.ink keyword.control.ink
//               ^ source.ink keyword.control.ink
->END
//<-- source.ink keyword.divert.ink keyword.other.ink
//^^^ source.ink support.constant.ink

