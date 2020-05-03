// SYNTAX TEST "source.ink"

-> empty_world
//<-- source.ink keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^^^^^^^^ source.ink variable.other.knot.ink
=== empty_world ===
//<--- source.ink storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
// ^ source.ink
//  ^^^^^^^^^^^ source.ink entity.name.function.ink
//             ^ source.ink
//              ^^^ source.ink storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
    {TURNS_SINCE(-> then)} = -1
//<---- source.ink
//  ^ source.ink keyword.control.ink
//   ^^^^^^^^^^^^^^^^^^^^ source.ink keyword.control.ink
//                       ^ source.ink keyword.control.ink
//                        ^^^^^^ source.ink
    * (then) stuff
//<---- source.ink
//  ^^ source.ink keyword.choice.ink keyword.operator.arithmetic.ink
//    ^ source.ink string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
//     ^^^^ source.ink string.label.ink entity.name.label.ink string.quoted.other.ink
//         ^ source.ink string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
//          ^^^^^^^ source.ink
        {TURNS_SINCE(-> then)} = 0
//<-------- source.ink
//      ^ source.ink keyword.control.ink
//       ^^^^^^^^^^^^^^^^^^^^ source.ink keyword.control.ink
//                           ^ source.ink keyword.control.ink
//                            ^^^^^ source.ink
        * * (next) more stuff
//<-------- source.ink
//      ^^^^ source.ink keyword.choice.ink keyword.operator.arithmetic.ink
//          ^ source.ink string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
//           ^^^^ source.ink string.label.ink entity.name.label.ink string.quoted.other.ink
//               ^ source.ink string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
//                ^^^^^^^^^^^^ source.ink
            {TURNS_SINCE(-> then)} = 1
//<------------ source.ink
//          ^ source.ink keyword.control.ink
//           ^^^^^^^^^^^^^^^^^^^^ source.ink keyword.control.ink
//                               ^ source.ink keyword.control.ink
//                                ^^^^^ source.ink
        -> DONE
//<-------- source.ink
//      ^^ source.ink keyword.divert.ink keyword.other.ink
//        ^ source.ink
//         ^^^^ source.ink support.constant.ink
