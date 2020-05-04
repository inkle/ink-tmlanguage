// SYNTAX TEST "source.ink"

<- choices
//<-- source.ink keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^^^^ source.ink variable.other.knot.ink
{ CHOICE_COUNT() }
//^ source.ink keyword.control.ink
//<---------------- source.ink keyword.control.ink
//               ^ source.ink keyword.control.ink
= end
//<- source.ink storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//<~- source.ink
//^^^ source.ink entity.name.function.ink
-> END
//<-- source.ink keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^ source.ink support.constant.ink
= choices
//<- source.ink storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//<~- source.ink
//^^^^^^^ source.ink entity.name.function.ink
* one -> end
//<- source.ink keyword.choice.ink keyword.operator.arithmetic.ink
//^^^ source.ink
//   ^ source.ink
//    ^^ source.ink keyword.divert.ink keyword.other.ink
//      ^ source.ink
//       ^^^ source.ink variable.other.knot.ink
* two -> end
//<- source.ink keyword.choice.ink keyword.operator.arithmetic.ink
//^^^ source.ink
//   ^ source.ink
//    ^^ source.ink keyword.divert.ink keyword.other.ink
//      ^ source.ink
//       ^^^ source.ink variable.other.knot.ink
