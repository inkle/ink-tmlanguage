// SYNTAX TEST "source.ink"

TODO: Lorem ipsum
//<---- comment.line.ink entity.todo.ink constant.other entity.todo.begin.ink
//  ^^^^^^^^^^^^^ comment.line.ink entity.todo.ink

=== knot ===
//<--- storage.knot.ink storage.type.ink
// ^ source.ink
//  ^^^^ entity.name.function.ink
//      ^ source.ink
//       ^^^ storage.knot.ink storage.type.ink
= stitch
//<- storage.knot.ink storage.type.ink
//<~- source.ink
//^^^^^^ entity.name.function.ink
    {
//<---- source.ink
//  ^ keyword.control.ink
        - (variable != 4):
//<-------- source.ink
//      ^ keyword.control.ink
//       ^ source.ink
//        ^^^^^^^^^^^^^^^ keyword.control.ink
//                       ^ keyword.control.ink
            TODO: Lorem ipsum
//<------------ comment.line.ink entity.todo.ink
//          ^^^^ comment.line.ink entity.todo.ink constant.other entity.todo.begin.ink
//              ^^^^^^^^^^^^^ comment.line.ink entity.todo.ink
            Text
//<------------ source.ink
    }
//<---- source.ink
//  ^ keyword.control.ink

    {condition:
//<---- source.ink
//  ^ keyword.control.ink
//   ^^^^^^^^^^ keyword.control.ink
        TODO: Lorem ipsum
//<-------- comment.line.ink entity.todo.ink
//      ^^^^ comment.line.ink entity.todo.ink constant.other entity.todo.begin.ink
//          ^^^^^^^^^^^^^ comment.line.ink entity.todo.ink
        Text
//<-------- source.ink
    }
//<---- source.ink
//  ^ keyword.control.ink

TODO: Lorem ipsum
//<---- comment.line.ink entity.todo.ink constant.other entity.todo.begin.ink
//  ^^^^^^^^^^^^^ comment.line.ink entity.todo.ink

* (label) {condition} [Hello] Choice
//<- keyword.choice.ink
//<~- source.ink
//^ string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
// ^^^^^ string.label.ink entity.name.label.ink string.quoted.other.ink
//      ^ string.label.ink entity.name.label.ink string.quoted.other.ink punctuation.definition.string.label.begin.ink punctuation.definition.string.begin.ink
//       ^ source.ink
//        ^ keyword.control.ink
//         ^^^^^^^^^ keyword.control.ink
//                  ^ keyword.control.ink
//                   ^ source.ink
//                    ^ keyword.choice.suppression.ink keyword.control.ink
//                     ^^^^^ source.ink
//                          ^ keyword.choice.suppression.ink keyword.control.ink
//                           ^^^^^^^ source.ink
TODO: Lorem ipsum
//<---- comment.line.ink entity.todo.ink constant.other entity.todo.begin.ink
//  ^^^^^^^^^^^^^ comment.line.ink entity.todo.ink
-> the_end
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^^^^ variable.other.knot.ink entity.name.variable.other.knot.ink

/*
//<-- comment.block.ink punctuation.definition.comment.ink
    TODO: Lorem ipsum
//<--------------------- comment.block.ink
*/
//<-- comment.block.ink punctuation.definition.comment.ink
