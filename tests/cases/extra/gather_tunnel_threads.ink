// SYNTAX TEST "source.ink"

/** MISC **********************************************************************/

-> knot
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^ variable.other.knot.ink
=== knot
//<--- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
// ^ source.ink
//  ^^^^ entity.name.function.ink
-> knot.gather
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^ variable.other.knot.ink
//     ^ punctuation.accessor.ink
//      ^^^^^^ variable.other.stitch.ink
- (gather) g
//<- keyword.gather.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^ string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
// ^^^^^^ string.label.ink entity.name.label.ink string.quoted.other.ink
//       ^ string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
//        ^^ source.ink
-> DONE
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^ support.constant.ink

VAR knotCount = 0
//<--- storage.type.ink storage.type.var.ink
// ^ source.ink
//  ^^^^^^^^^ variable.other.ink
//           ^ source.ink
//            ^ keyword.operator.assignment.ink
//             ^ source.ink
//              ^ constant.numeric.ink
VAR stitchCount = 0
//<--- storage.type.ink storage.type.var.ink
// ^ source.ink
//  ^^^^^^^^^^^ variable.other.ink
//             ^ source.ink
//              ^ keyword.operator.assignment.ink
//               ^ source.ink
//                ^ constant.numeric.ink
-> gather_count_test ->
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^^^^^^^^^^^^^^ variable.other.knot.ink
//                  ^ source.ink
//                   ^^ keyword.divert.ink keyword.other.ink
~ knotCount = 0
//<- keyword.logic.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^^^^^^^^ variable.other.ink
//         ^ source.ink
//          ^ keyword.operator.assignment.ink
//           ^ source.ink
//            ^ constant.numeric.ink
-> knot_count_test ->
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^^^^^^^^^^^^ variable.other.knot.ink
//                ^ source.ink
//                 ^^ keyword.divert.ink keyword.other.ink
~ knotCount = 0
//<- keyword.logic.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^^^^^^^^ variable.other.ink
//         ^ source.ink
//          ^ keyword.operator.assignment.ink
//           ^ source.ink
//            ^ constant.numeric.ink
-> knot_count_test ->
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^^^^^^^^^^^^ variable.other.knot.ink
//                ^ source.ink
//                 ^^ keyword.divert.ink keyword.other.ink
-> stitch_count_test ->
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^^^^^^^^^^^^^^ variable.other.knot.ink
//                  ^ source.ink
//                   ^^ keyword.divert.ink keyword.other.ink
== gather_count_test ==
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^^^^^^^^^^^^^^ entity.name.function.ink
//                  ^ source.ink
//                   ^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
VAR gatherCount = 0
//<--- storage.type.ink storage.type.var.ink
// ^ source.ink
//  ^^^^^^^^^^^ variable.other.ink
//             ^ source.ink
//              ^ keyword.operator.assignment.ink
//               ^ source.ink
//                ^ constant.numeric.ink
- (loop)
//<- keyword.gather.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^ string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
// ^^^^ string.label.ink entity.name.label.ink string.quoted.other.ink
//     ^ string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
~ gatherCount++
//<- keyword.logic.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^^^^^^^^^^ variable.other.ink
//           ^^ keyword.operator.arithmetic.ink
{gatherCount} {loop}
//<- keyword.control.ink
//<~----------- keyword.control.ink
//          ^ keyword.control.ink
//           ^ source.ink
//            ^ keyword.control.ink
//             ^^^^ keyword.control.ink
//                 ^ keyword.control.ink
{gatherCount<3:->loop}
//<~- keyword.control.ink
//<-------------- keyword.control.ink
//             ^^ keyword.divert.ink keyword.other.ink
//               ^^^^ variable.other.knot.ink
//                   ^ keyword.control.ink
->->
//<-- keyword.divert.ink keyword.other.ink
//^^ keyword.divert.ink keyword.other.ink
== knot_count_test ==
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^^^^^^^^^^^^ entity.name.function.ink
//                ^ source.ink
//                 ^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
~ knotCount++
//<- keyword.logic.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^^^^^^^^ variable.other.ink
//         ^^ keyword.operator.arithmetic.ink
{knotCount} {knot_count_test}
//<- keyword.control.ink
//<~--------- keyword.control.ink
//        ^ keyword.control.ink
//         ^ source.ink
//          ^ keyword.control.ink
//           ^^^^^^^^^^^^^^^ keyword.control.ink
//                          ^ keyword.control.ink
{knotCount<3:->knot_count_test}
//^ keyword.control.ink
//<~------------ keyword.control.ink
//           ^^ keyword.divert.ink keyword.other.ink
//             ^^^^^^^^^^^^^^^ variable.other.knot.ink
//                            ^ keyword.control.ink
->->
//<-- keyword.divert.ink keyword.other.ink
//^^ keyword.divert.ink keyword.other.ink
== stitch_count_test ==
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^^^^^^^^^^^^^^ entity.name.function.ink
//                  ^ source.ink
//                   ^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
~ stitchCount = 0
//<- keyword.logic.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^^^^^^^^^^ variable.other.ink
//           ^ source.ink
//            ^ keyword.operator.assignment.ink
//             ^ source.ink
//              ^ constant.numeric.ink
-> stitch ->
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^^^ variable.other.knot.ink
//       ^ source.ink
//        ^^ keyword.divert.ink keyword.other.ink
~ stitchCount = 0
//<- keyword.logic.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^^^^^^^^^^ variable.other.ink
//           ^ source.ink
//            ^ keyword.operator.assignment.ink
//             ^ source.ink
//              ^ constant.numeric.ink
-> stitch ->
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^^^ variable.other.knot.ink
//       ^ source.ink
//        ^^ keyword.divert.ink keyword.other.ink
->->
//<-- keyword.divert.ink keyword.other.ink
//^^ keyword.divert.ink keyword.other.ink
= stitch
//<- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//<~- source.ink
//^^^^^^ entity.name.function.ink
~ stitchCount++
//<- keyword.logic.ink keyword.operator.arithmetic.ink
//<~- source.ink
//^^^^^^^^^^^ variable.other.ink
//           ^^ keyword.operator.arithmetic.ink
{stitchCount} {stitch}
//<- keyword.control.ink
//<----------- keyword.control.ink
//          ^ keyword.control.ink
//           ^ source.ink
//            ^ keyword.control.ink
//             ^^^^^^ keyword.control.ink
//                   ^ keyword.control.ink
{stitchCount<3:->stitch}
//<- keyword.control.ink
//<-------------- keyword.control.ink
//             ^^ keyword.divert.ink keyword.other.ink
//               ^^^^^^ variable.other.knot.ink
//                     ^ keyword.control.ink
->->
//<-- keyword.divert.ink keyword.other.ink
//^^ keyword.divert.ink keyword.other.ink

-> knot
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^ variable.other.knot.ink
=== knot
//<--- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
// ^ source.ink
//  ^^^^ entity.name.function.ink
    <- threadA
//<---- source.ink
//  ^^ keyword.divert.ink keyword.other.ink
//    ^ source.ink
//     ^^^^^^^ variable.other.knot.ink
    When should this get printed?
//<--------------------------------- source.ink
    -> DONE
//<---- source.ink
//  ^^ keyword.divert.ink keyword.other.ink
//    ^ source.ink
//     ^^^^ support.constant.ink
=== threadA
//<--- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
// ^ source.ink
//  ^^^^^^^ entity.name.function.ink
    -> tunnel ->
//<---- source.ink
//  ^^ keyword.divert.ink keyword.other.ink
//    ^ source.ink
//     ^^^^^^ variable.other.knot.ink
//           ^ source.ink
//            ^^ keyword.divert.ink keyword.other.ink
    Finishing thread.
//<--------------------- source.ink
    -> DONE
//<---- source.ink
//  ^^ keyword.divert.ink keyword.other.ink
//    ^ source.ink
//     ^^^^ support.constant.ink
=== tunnel
//<--- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
// ^ source.ink
//  ^^^^^^ entity.name.function.ink
    -   I’m in a tunnel
//<---- source.ink
//  ^ keyword.gather.ink keyword.operator.arithmetic.ink
//   ^^^^^^^^^^^^^^^^^^ source.ink
    *   I’m an option
//<---- source.ink
//  ^ keyword.choice.ink keyword.operator.arithmetic.ink
//   ^^^^^^^^^^^^^^^^ source.ink
    -   ->->
//<---- source.ink
//  ^ keyword.gather.ink keyword.operator.arithmetic.ink
//   ^^^ source.ink
//      ^^ keyword.divert.ink keyword.other.ink
//        ^^ keyword.divert.ink keyword.other.ink

-> knot
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^ variable.other.knot.ink
=== knot
//<--- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
// ^ source.ink
//  ^^^^ entity.name.function.ink
    <- threadB
//<---- source.ink
//  ^^ keyword.divert.ink keyword.other.ink
//    ^ source.ink
//     ^^^^^^^ variable.other.knot.ink
    -> tunnel ->
//<---- source.ink
//  ^^ keyword.divert.ink keyword.other.ink
//    ^ source.ink
//     ^^^^^^ variable.other.knot.ink
//           ^ source.ink
//            ^^ keyword.divert.ink keyword.other.ink
    THE END
//<----------- source.ink
    -> END
//<---- source.ink
//  ^^ keyword.divert.ink keyword.other.ink
//    ^ source.ink
//     ^^^ support.constant.ink
=== tunnel
//<--- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
// ^ source.ink
//  ^^^^^^ entity.name.function.ink
    - blah blah
//<--- source.ink
//  ^ keyword.gather.ink keyword.operator.arithmetic.ink
//   ^^^^^^^^^^ source.ink
    * wigwag
//<--- source.ink
//  ^ keyword.choice.ink keyword.operator.arithmetic.ink
//   ^^^^^^^ source.ink
    - ->->
//<---- source.ink
//  ^ keyword.gather.ink keyword.operator.arithmetic.ink
//   ^ source.ink
//    ^^ keyword.divert.ink keyword.other.ink
//      ^^ keyword.divert.ink keyword.other.ink
=== threadB
//<--- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
// ^ source.ink
//  ^^^^^^^ entity.name.function.ink
    *   option
//<---- source.ink
//  ^ keyword.choice.ink keyword.operator.arithmetic.ink
//   ^^^^^^^^^ source.ink
    -   something
//<---- source.ink
//  ^ keyword.gather.ink keyword.operator.arithmetic.ink
//   ^^^^^^^^^^^^ source.ink
        -> DONE
//<-------- source.ink
//      ^^ keyword.divert.ink keyword.other.ink
//        ^ source.ink
//         ^^^^ support.constant.ink

-> one_then_tother(-> tunnel)
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^^^^^^^^^^^^ variable.function.ink
//                ^ punctuation.section.parens.begin.ink
//                 ^^ keyword.divert.ink keyword.other.ink
//                   ^ source.ink
//                    ^^^^^^ variable.other.knot.ink
//                          ^ punctuation.section.parens.end.ink
=== one_then_tother(-> x) ===
//<--- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
// ^ source.ink
//  ^^^^^^^^^^^^^^^ entity.name.function.ink
//                 ^ punctuation.section.parens.begin.ink
//                  ^^ keyword.divert.ink keyword.other.ink
//                    ^ source.ink
//                     ^ variable.other.knot.ink
//                      ^ punctuation.section.parens.end.ink
//                       ^ source.ink
//                        ^^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
    -> x -> end
//<---- source.ink
//  ^^ keyword.divert.ink keyword.other.ink
//    ^ source.ink
//     ^ variable.other.knot.ink
//      ^ source.ink
//       ^^ keyword.divert.ink keyword.other.ink
//         ^ source.ink
//          ^^^ variable.other.knot.ink
=== tunnel ===
//<--- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
// ^ source.ink
//  ^^^^^^ entity.name.function.ink
//        ^ source.ink
//         ^^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
    STUFF
//<--------- source.ink
    ->->
//<---- source.ink
//  ^^ keyword.divert.ink keyword.other.ink
//    ^^ keyword.divert.ink keyword.other.ink
=== end ===
//<--- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
// ^ source.ink
//  ^^^ entity.name.function.ink
//     ^ source.ink
//      ^^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
    -> END
//<---- source.ink
//  ^^ keyword.divert.ink keyword.other.ink
//    ^ source.ink
//     ^^^^ support.constant.ink
