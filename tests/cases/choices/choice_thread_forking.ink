// SYNTAX TEST "source.ink"

-> generate_choice(1) ->
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^^^^^^^^^^^^ variable.function.ink
//                ^^ source.ink
//                  ^ source.ink
//                   ^ source.ink
//                    ^^ keyword.divert.ink keyword.other.ink
== generate_choice(x) ==
//<-- storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^^^^^^^^^^^^ entity.name.function.ink
//                ^ punctuation.section.parens.begin.ink
//                 ^ variable.parameter.function.ink
//                  ^ punctuation.section.parens.end.ink
//                   ^ source.ink
//                    ^^ storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
{true:
//<- keyword.control.ink
//<~---- keyword.control.ink
//   ^ keyword.control.ink
    + A choice
//<---- source.ink
//  ^ keyword.choice.sticky.ink keyword.operator.arithmetic.ink
//    ^^^^^^^^^ source.ink
        Vaue of local var is: {x}
//<------------------------------ source.ink
//                            ^^^ keyword.control.ink
        -> END
//<-------- source.ink
//      ^^ keyword.divert.ink keyword.other.ink
//        ^ source.ink
//         ^^^ support.constant.ink
}
//<- keyword.control.ink
->->
//<-- keyword.divert.ink keyword.other.ink
//^^ keyword.divert.ink keyword.other.ink
