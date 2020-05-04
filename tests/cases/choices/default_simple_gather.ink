// SYNTAX TEST "source.ink"

* ->
//<- keyword.choice.ink keyword.operator.arithmetic.ink
//^^ keyword.divert.ink keyword.other.ink
- x
//<- source.ink keyword.gather.ink keyword.operator.arithmetic.ink
//^ source.ink
-> DONE
//<-- keyword.divert.ink keyword.other.ink
// ^^^^ support.constant.ink
