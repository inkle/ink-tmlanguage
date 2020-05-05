=== the_orient_express ===
= in_first_class
	...
= in_third_class
	...
= in_the_guards_van
	...
= missed_the_train
	...

*	[Travel in third class]
	-> the_orient_express.in_third_class

*	[Travel in the guard's van]
	-> the_orient_express.in_the_guards_van

*	[Travel in first class]
	"First class, Monsieur. Where else?"
	-> the_orient_express

*	[Travel in first class]
	"First class, Monsieur. Where else?"
	-> the_orient_express.in_first_class

=== the_orient_express ===

We boarded the train, but where?
*	[First class] -> in_first_class
*	[Second class] -> in_second_class

= in_first_class
	...
= in_second_class
	...

-> the_orient_express

=== the_orient_express ===
= in_first_class
	I settled my master.
	*	[Move to third class]
		-> in_third_class

= in_third_class
	I put myself in third.

INCLUDE newspaper.ink
INCLUDE cities/vienna.ink
INCLUDE journeys/orient_express.ink
