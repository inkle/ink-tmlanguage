// SYNTAX TEST "source.ink"

<- knot
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^ variable.other.knot.ink
== knot
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^ entity.name.function.ink
   ~ temp x = 1
//<--- source.ink
// ^ keyword.logic.ink keyword.operator.arithmetic.ink
//  ^ source.ink
//   ^^^^ storage.modifier.ink
//        ^  variable.other.stitch.ink
//          ^ keyword.assignment.ink
//            ^ constant.numeric.ink
   *   ->
//<--- source.ink
// ^ keyword.choice.ink keyword.operator.arithmetic.ink
//     ^^ keyword.divert.ink keyword.other.ink
       Should be 1 not 0: {x}.
//<-------------------------- source.ink
//                        ^ keyword.control.ink
//                         ^ keyword.control.ink
//                          ^ keyword.control.ink
//                           ^^ source.ink
       -> DONE
//<--------- source.ink
//     ^^ keyword.divert.ink keyword.other.ink
//       ^ source.ink
//        ^^^^ support.constant.ink
