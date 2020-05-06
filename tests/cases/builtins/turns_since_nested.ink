// SYNTAX TEST "source.ink"

-> empty_world
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^^^^^^^^ variable.other.knot.ink
=== empty_world ===
//<--- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
// ^ source.ink
//  ^^^^^^^^^^^ entity.name.function.ink
//             ^ source.ink
//              ^^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
    {TURNS_SINCE(-> then)} = -1
//<---- source.ink
//  ^ keyword.control.ink
//   ^^^^^^^^^^^^^^^^^^^^ keyword.control.ink
//                       ^ keyword.control.ink
//                        ^^^^^^ source.ink
    * (then) stuff
//<---- source.ink
//  ^  keyword.choice.ink keyword.operator.arithmetic.ink
//    ^ string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
//     ^^^^ string.label.ink entity.name.label.ink string.quoted.other.ink
//         ^ string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
//          ^^^^^^^ source.ink
        {TURNS_SINCE(-> then)} = 0
//<-------- source.ink
//      ^ keyword.control.ink
//       ^^^^^^^^^^^^^^^^^^^^ keyword.control.ink
//                           ^ keyword.control.ink
//                            ^^^^^ source.ink
        * * (next) more stuff
//<-------- source.ink
//      ^^^  keyword.choice.ink keyword.operator.arithmetic.ink
//          ^ string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
//           ^^^^ string.label.ink entity.name.label.ink string.quoted.other.ink
//               ^ string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
//                ^^^^^^^^^^^^ source.ink
            {TURNS_SINCE(-> then)} = 1
//<------------ source.ink
//          ^ keyword.control.ink
//           ^^^^^^^^^^^^^^^^^^^^ keyword.control.ink
//                               ^ keyword.control.ink
//                                ^^^^^ source.ink
        -> DONE
//<-------- source.ink
//      ^^ keyword.divert.ink keyword.other.ink
//        ^ source.ink
//         ^^^^ support.constant.ink
