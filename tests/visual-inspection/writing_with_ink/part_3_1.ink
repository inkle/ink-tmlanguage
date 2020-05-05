VAR knowledge_of_the_cure = false
VAR players_name = "Emilia"
VAR number_of_infected_people = 521
VAR current_epilogue = -> they_all_die_of_the_plague

=== the_train ===
	The train jolted and rattled. { mood > 0:I was feeling positive enough, however, and did not mind the odd bump|It was more than I could bear}.
	*	{ not knows_about_wager } 'But, Monsieur, why are we travelling?'[] I asked.
	* 	{ knows_about_wager} I contemplated our strange adventure[]. Would it be possible?

VAR 	current_epilogue = -> everybody_dies

=== continue_or_quit ===
Give up now, or keep trying to save your Kingdom?
*  [Keep trying!] 	-> more_hopeless_introspection
*  [Give up] 		-> current_epilogue

VAR friendly_name_of_player = "Jackie"
VAR age = 23

My name is Jean Passepartout, but my friend's call me {friendly_name_of_player}. I'm {age} years old.

VAR a_colour = ""

~ a_colour = "{~red|blue|green|yellow}"

{a_colour}

The goon hits you, and sparks fly before you eyes, {a_colour} and {a_colour}.

VAR a_colour = "{~red|blue|green|yellow}"
