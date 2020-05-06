// SYNTAX TEST "source.ink"

-> knot_with_options ->
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^^^^^^^^^^^^^^ variable.other.knot.ink
//                  ^ source.ink
//                   ^^ keyword.divert.ink keyword.other.ink
Finished tunnel.
//<---------------- source.ink
Starting thread.
//<---------------- source.ink
<- thread_with_options
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^^^^^^^^^^^^^^^^ variable.other.knot.ink
* E
//<- keyword.choice.ink keyword.operator.arithmetic.ink
//<~-- source.ink
-
//<- keyword.gather.ink keyword.operator.arithmetic.ink
Done.
//<----- source.ink
== knot_with_options ==
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^^^^^^^^^^^^^^ entity.name.function.ink
//                  ^ source.ink
//                   ^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
* A
//<- keyword.choice.ink keyword.operator.arithmetic.ink
//<~-- source.ink
* B
//<- keyword.choice.ink keyword.operator.arithmetic.ink
//<~-- source.ink
-
//<- keyword.gather.ink keyword.operator.arithmetic.ink
->->
//<-- keyword.divert.ink keyword.other.ink
//^^ keyword.divert.ink keyword.other.ink
== thread_with_options ==
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^^^^^^^^^^^^^^^^ entity.name.function.ink
//                    ^ source.ink
//                     ^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
* C
//<- keyword.choice.ink keyword.operator.arithmetic.ink
//<~-- source.ink
* D
//<- keyword.choice.ink keyword.operator.arithmetic.ink
//<~-- source.ink
- -> DONE
//<- keyword.gather.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^ keyword.divert.ink keyword.other.ink
//  ^ source.ink
//   ^^^^ support.constant.ink
