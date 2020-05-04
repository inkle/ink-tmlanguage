The radio hissed into life. {"Three!"|"Two!"|"One!"|There was the white noise racket of an explosion.|But it was just static.}

{I bought a coffee with my five-pound note.|I bought a second coffee for my friend.|I didn't have enough money to buy any more coffee.}

It was {&Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday} today.

He told me a joke. {!I laughed politely.|I smiled.|I grimaced.|I promised myself to not react again.}

I tossed the coin. {~Heads|Tails}.

I took a step forward. {!||||Then the lights went out. -> eek}

The Ratbear {&{wastes no time and |}swipes|scratches} {&at you|into your {&leg|arm|cheek}}.

I {waited.|waited some more.|snoozed.|woke up and waited more.|gave up and left. -> leave_post_office}

+ 	"Hello, {&Master|Monsieur Fogg|you|brown-eyes}!"[] I declared.

=== whack_a_mole ===
	{I heft the hammer.|{~Missed!|Nothing!|No good. Where is he?|Ah-ha! Got him! -> END}}
	The {&mole|{&nasty|blasted|foul} {&creature|rodent}} is {in here somewhere|hiding somewhere|still at large|laughing at me|still unwhacked|doomed}. <>
	{!I'll show him!|But this time he won't escape!}
	* 	[{&Hit|Smash|Try} top-left] 	-> whack_a_mole
	*  [{&Whallop|Splat|Whack} top-right] -> whack_a_mole
	*  [{&Blast|Hammer} middle] -> whack_a_mole
	*  [{&Clobber|Bosh} bottom-left] 	-> whack_a_mole
	*  [{&Nail|Thump} bottom-right] 	-> whack_a_mole
	*  [] Then you collapse from hunger. The mole has defeated you!
		-> END

=== turn_on_television ===
I turned on the television {for the first time|for the second time|again|once more}, but there was {nothing good on, so I turned it off again|still nothing worth watching|even less to hold my interest than before|nothing but rubbish|a program about sharks and I don't like sharks|nothing on}.
+	[Try it again]	 		-> turn_on_television
*	[Go outside instead]	-> go_outside_instead

=== go_outside_instead ===
-> END

{met_blofeld: "I saw him. Only for a moment." }

"His real name was {met_blofeld.learned_his_name: Franz|a secret}."

{met_blofeld: "I saw him. Only for a moment. His real name was {met_blofeld.learned_his_name: Franz|kept a secret}." | "I missed him. Was he particularly evil?" }

