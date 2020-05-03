// SYNTAX TEST "source.ink"

{FLOOR(1.2)}
//<- source.ink keyword.control.ink
//<---------- source.ink keyword.control.ink
//         ^ source.ink keyword.control.ink
{INT(1.2)}
//<- source.ink keyword.control.ink
//<-------- source.ink keyword.control.ink
//       ^ source.ink keyword.control.ink
{CEILING(1.2)}
//<- source.ink keyword.control.ink
//<------------ source.ink keyword.control.ink
//           ^ source.ink keyword.control.ink
{CEILING(1.2) / 3}
//<- source.ink keyword.control.ink
//<---------------- source.ink keyword.control.ink
//               ^ source.ink keyword.control.ink
{INT(CEILING(1.2)) / 3}
//<- source.ink keyword.control.ink
//<--------------------- source.ink keyword.control.ink
//                    ^ source.ink keyword.control.ink
{FLOOR(1)}
//<- source.ink keyword.control.ink
//<-------- source.ink keyword.control.ink
//     ^ source.ink keyword.control.ink
