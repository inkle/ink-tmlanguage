// SYNTAX TEST "source.ink"

-> generate_choice(1) ->
//<-- source.ink keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^^^^^^^^^^^^ source.ink variable.function.ink
//                ^^ source.ink
//                  ^ source.ink
//                   ^ source.ink
//                    ^^ source.ink keyword.divert.ink keyword.other.ink
== generate_choice(x) ==
//<-- source.ink storage.knot.ink punctuation.definition.generic.begin.ink storage.type.ink
//^ source.ink
// ^^^^^^^^^^^^^^^ source.ink entity.name.function.ink
//                ^ source.ink punctuation.section.parens.begin.ink
//                 ^ source.ink variable.parameter.function.ink
//                  ^ source.ink punctuation.section.parens.end.ink
//                   ^ source.ink
//                    ^^ source.ink storage.knot.ink punctuation.definition.generic.end.ink storage.type.ink
{true:
//<- source.ink keyword.control.ink
//<~---- source.ink keyword.control.ink
//   ^ source.ink keyword.control.ink
    + A choice
//<---- source.ink
//  ^ source.ink keyword.choice.sticky.ink keyword.operator.arithmetic.ink
//    ^^^^^^^^^ source.ink
        Vaue of local var is: {x}
//<------------------------------ source.ink
//                            ^^^ keyword.control.ink
        -> END
//<-------- source.ink
//      ^^ source.ink keyword.divert.ink keyword.other.ink
//        ^ source.ink
//         ^^^ source.ink support.constant.ink
}
//<- source.ink keyword.control.ink
->->
//<-- source.ink keyword.divert.ink keyword.other.ink
//^^ source.ink keyword.divert.ink keyword.other.ink
