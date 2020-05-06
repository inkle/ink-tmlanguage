// SYNTAX TEST "source.ink"

{false:not true|true}
//<- keyword.control.ink
//<------ keyword.control.ink
//     ^^^^^^^^ source.ink
//             ^ keyword.control.ink
//              ^^^^ source.ink
//                  ^ keyword.control.ink
{
//<- keyword.control.ink
   - 4 > 5: not true
//<--- source.ink
// ^ keyword.control.ink
//  ^ source.ink
//   ^^^^^ keyword.control.ink
//        ^ keyword.control.ink
//         ^^^^^^^^^^ source.ink
   - 5 > 4: true
//<--- source.ink
// ^ keyword.control.ink
//  ^ source.ink
//   ^^^^^ keyword.control.ink
//        ^ keyword.control.ink
//         ^^^^^^ source.ink
}
//<- keyword.control.ink
{ 2*2 > 3:
//<- keyword.control.ink
//<--------- keyword.control.ink
   - true
//<--- source.ink
// ^ keyword.control.ink
//  ^^^^^^ source.ink
   - not true
//<--- source.ink
// ^ keyword.control.ink
//  ^^^^^^^^^^ source.ink
}
//<- keyword.control.ink
{
//<- keyword.control.ink
   - 1 > 3: not true
//<--- source.ink
// ^ keyword.control.ink
//  ^ source.ink
//   ^^^^^ keyword.control.ink
//        ^ keyword.control.ink
//         ^^^^^^^^^^ source.ink
   - { 2+2 == 4:
//<--- source.ink
// ^ keyword.control.ink
//  ^ source.ink
//   ^ keyword.control.ink
//    ^^^^^^^^^^ keyword.control.ink
        - true
//<-------- source.ink
//      ^ keyword.control.ink
//       ^^^^^^ source.ink
        - not true
//<-------- source.ink
//      ^ keyword.control.ink
//       ^^^^^^^^^^ source.ink
   }
//<--- source.ink
// ^ keyword.control.ink
}
//<- keyword.control.ink
{ 2*3:
//<----- keyword.control.ink
   - 1+7: not true
//<--- source.ink
// ^ keyword.control.ink
//  ^ source.ink
//   ^^^ keyword.control.ink
//      ^ keyword.control.ink
//       ^^^^^^^^^^ source.ink
   - 9: not true
//<--- source.ink
// ^ keyword.control.ink
//  ^ source.ink
//   ^ keyword.control.ink
//    ^ keyword.control.ink
//     ^^^^^^^^^^ source.ink
   - 1+1+1+3: true
//<--- source.ink
// ^ keyword.control.ink
//  ^ source.ink
//   ^^^^^^^ keyword.control.ink
//          ^ keyword.control.ink
//           ^^^^^^ source.ink
   - 9-3: also true but not printed
//<--- source.ink
// ^ keyword.control.ink
//  ^ source.ink
//   ^^^ keyword.control.ink
//      ^ keyword.control.ink
//       ^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.ink
}
//<- keyword.control.ink
{ true:
//<- keyword.control.ink
//<------ keyword.control.ink
    great
//<--------- source.ink
    right?
//<---------- source.ink
}
//<- keyword.control.ink
