// SYNTAX TEST "source.ink"

<- choices
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^^^^ variable.other.knot.ink
{ CHOICE_COUNT() }
//^ keyword.control.ink
//<---------------- keyword.control.ink
//               ^ keyword.control.ink
= end
//<- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//<~- source.ink
//^^^ entity.name.function.ink
-> END
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^ support.constant.ink
= choices
//<- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//<~- source.ink
//^^^^^^^ entity.name.function.ink
* one -> end
//<- keyword.choice.ink keyword.operator.arithmetic.ink
//^^^ source.ink
//   ^ source.ink
//    ^^ keyword.divert.ink keyword.other.ink
//      ^ source.ink
//       ^^^ variable.other.knot.ink
* two -> end
//<- keyword.choice.ink keyword.operator.arithmetic.ink
//^^^ source.ink
//   ^ source.ink
//    ^^ keyword.divert.ink keyword.other.ink
//      ^ source.ink
//       ^^^ variable.other.knot.ink
