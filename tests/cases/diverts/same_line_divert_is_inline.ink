// SYNTAX TEST "source.ink"

-> hurry_home
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^^^^^^^ variable.other.knot.ink
=== hurry_home ===
//<--- storage.knot.ink storage.type.ink
// ^ source.ink
//  ^^^^^^^^^^ entity.name.function.ink
//            ^ source.ink
//             ^^^ storage.knot.ink storage.type.ink
We hurried home to Savile Row -> as_fast_as_we_could
//<----------------------------- source.ink
//                           ^ source.ink
//                            ^^ keyword.divert.ink keyword.other.ink
//                              ^ source.ink
//                               ^^^^^^^^^^^^^^^^^^^ variable.other.knot.ink
=== as_fast_as_we_could ===
//<--- storage.knot.ink storage.type.ink
// ^ source.ink
//  ^^^^^^^^^^^^^^^^^^^ entity.name.function.ink
//                     ^ source.ink
//                      ^^^ storage.knot.ink storage.type.ink
as fast as we could.
//<-------------------- source.ink
-> DONE
//<-- keyword.divert.ink keyword.other.ink
//^ source.ink
// ^^^^ support.constant.ink
