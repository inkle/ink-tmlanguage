-  (top)

=== meet_guard ===
The guard frowns at you.

* 	(greet) [Greet him]
	'Greetings.'
*	(get_out) 'Get out of my way[.'],' you tell the guard.

- 	'Hmm,' replies the guard.

*	{greet} 	'Having a nice day?' // only if you greeted him

* 	'Hmm?'[] you reply.

*	{get_out} [Shove him aside] 	 // only if you threatened him
	You shove him sharply. He stares in reply, and draws his sword!
	-> fight_guard 			// this route diverts out of the weave

-	'Mff,' the guard replies, and then offers you a paper bag. 'Toffee?'

=== knot ===
= stitch_one
	- (gatherpoint) Some content.
= stitch_two
	*	{stitch_one.gatherpoint} Option

=== knot_one ===
-	(gather_one)
	* {knot_two.stitch_two.gather_two} Option

=== knot_two ===
= stitch_two
	- (gather_two)
		*	{knot_one.gather_one} Option

=== fight_guard ===
...
= throw_something
*	(rock) [Throw rock at guard] -> throw
* 	(sand) [Throw sand at guard] -> throw

= throw
You hurl {throw_something.rock:a rock|a handful of sand} at the guard.

- (opts)
	*	'Can I get a uniform from somewhere?'[] you ask the cheerful guard.
		'Sure. In the locker.' He grins. 'Don't think it'll fit you, though.'
	*	'Tell me about the security system.'
		'It's ancient,' the guard assures you. 'Old as coal.'
	*	'Are there dogs?'
		'Hundreds,' the guard answers, with a toothy grin. 'Hungry devils, too.'
	// We require the player to ask at least one question
	*	{loop} [Enough talking]
		-> done
- (loop)
	// loop a few times before the guard gets bored
	{ -> opts | -> opts | }
	He scratches his head.
	'Well, can't stand around talking all day,' he declares.
- (done)
	You thank the guard, and move away.

- (opts)
*	[Pull a face]
	You pull a face, and the soldier comes at you! -> shove

*	(shove) [Shove the guard aside] You shove the guard to one side, but he comes back swinging.

*	{shove} [Grapple and fight] -> fight_the_guard

- 	-> opts

*	"Are you quite well, Monsieur?"[] I asked.
	- - (quitewell) "Quite well," he replied.
*	"How did you do at the crossword, Monsieur?"[] I asked.
	-> quitewell
*	I said nothing[] and neither did my Master.
-	We feel into companionable silence once more.
