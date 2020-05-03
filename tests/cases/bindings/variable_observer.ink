// SYNTAX TEST "source.ink"

VAR testVar = 5
//<--- source.ink storage.type.ink storage.type.var.ink
// ^ source.ink
//  ^^^^^^^ source.ink variable.other.ink
//         ^ source.ink
//          ^ source.ink keyword.operator.assignment.ink
//           ^ source.ink
//            ^ source.ink constant.numeric.ink
VAR testVar2 = 10
//<--- source.ink storage.type.ink storage.type.var.ink
// ^ source.ink
//  ^^^^^^^^ source.ink variable.other.ink
//          ^ source.ink
//           ^ source.ink keyword.operator.assignment.ink
//            ^ source.ink
//             ^^ source.ink constant.numeric.ink
Hello world!
//<------------ source.ink
~ testVar = 15
//<- source.ink keyword.logic.ink keyword.operator.arithmetic.ink
//<~--------- source.ink variable.other.ink
//        ^ source.ink keyword.operator.assignment.ink
//         ^ source.ink
//          ^^ source.ink constant.numeric.ink
~ testVar2 = 100
//<- source.ink keyword.logic.ink keyword.operator.arithmetic.ink
//<~---------- source.ink variable.other.ink
//         ^ source.ink keyword.operator.assignment.ink
//          ^ source.ink
//           ^^^ source.ink constant.numeric.ink
Hello world 2!
//<-------------- source.ink
* choice
//<-- source.ink keyword.choice.ink keyword.operator.arithmetic.ink
//^^^^^^^ source.ink
    ~ testVar = 25
//<---- source.ink
//  ^ source.ink keyword.logic.ink keyword.operator.arithmetic.ink
//   ^^^^^^^^^ source.ink variable.other.ink
//            ^ source.ink keyword.operator.assignment.ink
//             ^ source.ink
//              ^^ source.ink constant.numeric.ink
    ~ testVar2 = 200
//<---- source.ink
//  ^ source.ink keyword.logic.ink keyword.operator.arithmetic.ink
//   ^^^^^^^^^^ source.ink variable.other.ink
//             ^ source.ink keyword.operator.assignment.ink
//              ^ source.ink
//               ^^^ source.ink constant.numeric.ink
    -> END
//<---- source.ink
//  ^^ source.ink keyword.divert.ink keyword.other.ink
//    ^ source.ink
//     ^^^ source.ink support.constant.ink
