// SYNTAX TEST "source.ink"

/** EXTERNALS *****************************************************************/

EXTERNAL message(x)
//<----- storage.type.external.ink
//      ^ source.ink
//       ^^^^^^^ entity.name.function.ink
//              ^ punctuation.section.parens.begin.ink
//               ^ variable.parameter.function.ink
//                ^ punctuation.section.parens.end.ink
EXTERNAL multiply(x,y)
//<----- storage.type.external.ink
//      ^ source.ink
//       ^^^^^^^^ entity.name.function.ink
//               ^ punctuation.section.parens.begin.ink
//                ^ variable.parameter.function.ink
//                 ^ punctuation.separator.ink
//                  ^ variable.parameter.function.ink
//                   ^ punctuation.section.parens.end.ink
EXTERNAL times(i, str)
//<----- storage.type.external.ink
//      ^ source.ink
//       ^^^^^ entity.name.function.ink
//            ^ punctuation.section.parens.begin.ink
//             ^ variable.parameter.function.ink
//              ^ punctuation.separator.ink
//               ^ source.ink
//                ^^^ variable.parameter.function.ink
//                   ^ punctuation.section.parens.end.ink

/** FUNCTIONS *****************************************************************/

== function passthrough(x)
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^^^^^ storage.type.ink
//         ^ source.ink
//          ^^^^^^^^^^^ entity.name.function.ink
//                     ^ punctuation.section.parens.begin.ink
//                      ^ variable.parameter.function.ink
//                       ^ punctuation.section.parens.end.ink
In passthrough
//<-------------- source.ink
~ return x
//<- keyword.logic.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^^^^^ keyword.control.ink
//      ^ source.ink
//       ^ variable.other.ink

== function increment(x) ==
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^^^^^ storage.type.ink
//         ^ source.ink
//          ^^^^^^^^^ entity.name.function.ink
//                   ^ punctuation.section.parens.begin.ink
//                    ^ variable.parameter.function.ink
//                     ^ punctuation.section.parens.end.ink
//                      ^ source.ink
//                       ^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
~ return x + 1
//<- keyword.logic.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^^^^^ keyword.control.ink
//      ^ source.ink
//       ^  variable.other.ink
//        ^ source.ink
//         ^ keyword.operator.arithmetic.ink
//          ^ source.ink
//           ^ constant.numeric.ink

==  function multiply( x ,  abc ) ===
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^^ source.ink
//  ^^^^^^^^ storage.type.ink
//          ^ source.ink
//           ^^^^^^^^ entity.name.function.ink
//                   ^ punctuation.section.parens.begin.ink
//                    ^ source.ink
//                     ^ variable.parameter.function.ink
//                      ^ source.ink
//                       ^ punctuation.separator.ink
//                        ^^ source.ink
//                          ^^^ variable.parameter.function.ink
//                             ^ source.ink
//                              ^ punctuation.section.parens.end.ink
//                               ^ source.ink
//                                ^^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
~ return x * abc
//<- keyword.logic.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^^^^^ keyword.control.ink
//      ^ source.ink
//       ^ variable.other.ink
//        ^ source.ink
//         ^ keyword.operator.arithmetic.ink
//          ^ source.ink
//           ^^^ variable.other.ink

=== 1_knot ===
//<--- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
// ^ source.ink
//  ^^^^^^ entity.name.function.ink
//        ^ source.ink
//          ^^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
= 1stitch
//<- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//<~- source.ink
//^^^^^^^^ entity.name.function.ink
    ...
//<------- source.ink
= stitch2(ab)
//<- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//<~- source.ink
//^^^^^^^ entity.name.function.ink
//       ^ punctuation.section.parens.begin.ink
//        ^^ variable.parameter.function.ink
//          ^ punctuation.section.parens.end.ink
    ...
//<------- source.ink

=== 2_knot(with, param)   ==
//<--- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
// ^ source.ink
//  ^^^^^^ entity.name.function.ink
//        ^ punctuation.section.parens.begin.ink
//         ^^^^ variable.parameter.function.ink
//             ^ punctuation.separator.ink
//              ^ source.ink
//               ^^^^^ variable.parameter.function.ink
//                    ^ punctuation.section.parens.end.ink
//                     ^^^ source.ink
//                        ^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
