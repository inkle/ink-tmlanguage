// SYNTAX TEST "source.ink"

{FLOOR(1.2)}
//<- keyword.control.ink
//<---------- keyword.control.ink
//         ^ keyword.control.ink
{INT(1.2)}
//<- keyword.control.ink
//<-------- keyword.control.ink
//       ^ keyword.control.ink
{CEILING(1.2)}
//<- keyword.control.ink
//<------------ keyword.control.ink
//           ^ keyword.control.ink
{CEILING(1.2) / 3}
//<- keyword.control.ink
//<---------------- keyword.control.ink
//               ^ keyword.control.ink
{INT(CEILING(1.2)) / 3}
//<- keyword.control.ink
//<--------------------- keyword.control.ink
//                    ^ keyword.control.ink
{FLOOR(1)}
//<- keyword.control.ink
//<-------- keyword.control.ink
//     ^ keyword.control.ink
