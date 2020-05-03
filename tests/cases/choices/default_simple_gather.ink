// SYNTAX TEST "source.ink"

* ->
//<-- source.ink keyword.choice.ink keyword.operator.arithmetic.ink
//^^ source.ink keyword.divert.ink keyword.other.ink
- x
//<-- source.ink keyword.gather.ink keyword.operator.arithmetic.ink
//^^ source.ink
-> DONE
//<-- source.ink keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^ source.ink support.constant.ink
