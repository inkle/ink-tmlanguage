// SYNTAX TEST "source.ink"

<- knot
//<-- source.ink keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^ source.ink variable.other.knot.ink
== knot
//<-- source.ink storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^ source.ink entity.name.function.ink
   ~ temp x = 1
//<--- source.ink
// ^ source.ink keyword.logic.ink keyword.operator.arithmetic.ink
//  ^ source.ink
//   ^^^^ source.ink variable.other.ink
//       ^^^ source.ink variable.other.ink
//          ^ source.ink keyword.operator.assignment.ink
//           ^ source.ink
//            ^ source.ink constant.numeric.ink
   *   ->
//<--- source.ink
// ^^^^ source.ink keyword.choice.ink keyword.operator.arithmetic.ink
//     ^^ source.ink keyword.divert.ink keyword.other.ink
       Should be 1 not 0: {x}.
//<-------------------------- source.ink
//                        ^ source.ink keyword.control.ink
//                         ^ source.ink variable.other.ink
//                          ^ source.ink keyword.control.ink
//                           ^^ source.ink
       -> DONE
//<--------- source.ink
//     ^^ source.ink keyword.divert.ink keyword.other.ink
//       ^ source.ink
//        ^^^^ source.ink support.constant.ink
