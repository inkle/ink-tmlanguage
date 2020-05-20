// SYNTAX TEST "source.ink"

* opt
//<- keyword.choice.ink
//<~---- source.ink
    - - text
//<---- source.ink
//  ^^^ keyword.gather.ink
//     ^^^^^ source.ink
    * * {false} impossible
//<---- source.ink
//  ^^^ keyword.choice.ink
//     ^ source.ink
//      ^ keyword.control.ink
//       ^^^^^ keyword.control.ink
//            ^ keyword.control.ink
//             ^^^^^^^^^^^ source.ink
- gather
//<- keyword.gather.ink
//<------- source.ink
