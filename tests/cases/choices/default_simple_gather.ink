// SYNTAX TEST "source.ink"

* ->
//<- keyword.choice.ink
//^^ keyword.divert.ink keyword.other.ink
- x
//<- keyword.gather.ink
//^ source.ink
-> DONE
//<-- keyword.divert.ink keyword.other.ink
// ^^^^ support.constant.ink
