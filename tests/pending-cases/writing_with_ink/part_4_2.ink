== thread_example ==
I had a headache; threading is hard to get your head around.
<- conversation
<- walking


== conversation ==
It was a tense moment for Monty and me.
 * "What did you have for lunch today?"[] I asked.
    "Spam and eggs," he replied.
 * "Nice weather, we're having,"[] I said.
    "I've seen better," he replied.
 - -> house

== walking ==
We continued to walk down the dusty road.
 * [Continue walking]
    -> house

== house ==
Before long, we arrived at his house.
-> END


CONST HALLWAY = 1
CONST OFFICE = 2

VAR player_location = HALLWAY
VAR generals_location = HALLWAY
VAR doctors_location = OFFICE

== run_player_location
	{
		- player_location == HALLWAY: -> hallway
	}

== hallway ==
	<- characters_present(HALLWAY)
	*	[Drawers]	-> examine_drawers
	* 	[Wardrobe] -> examine_wardrobe
	*  [Go to Office] 	-> go_office
	-	-> run_player_location
= examine_drawers
	// etc...

// Here's the thread, which mixes in dialogue for characters you share the room with at the moment.

== characters_present(room)
	{ generals_location == room:
		<- general_conversation
	}
	{ doctors_location == room:
		<- doctor_conversation
	}
	-> DONE

== general_conversation
	*	[Ask the General about the bloodied knife]
		"It's a bad business, I can tell you."
	-	-> run_player_location

== doctor_conversation
	*	[Ask the Doctor about the bloodied knife]
		"There's nothing strange about blood, is there?"
	-	-> run_player_location

== thread_example ==
I had a headache; threading is hard to get your head around.
<- conversation
<- walking
-> DONE

=== outside_the_house
The front step. The house smells. Of murder. And lavender.
- (top)
	<- review_case_notes(-> top)
	*	[Go through the front door]
		I stepped inside the house.
		-> the_hallway
	* 	[Sniff the air]
		I hate lavender. It makes me think of soap, and soap makes me think about my marriage.
		-> top

=== the_hallway
The hallway. Front door open to the street. Little bureau.
- (top)
	<- review_case_notes(-> top)
	*	[Go through the front door]
		I stepped out into the cool sunshine.
		-> outside_the_house
	* 	[Open the bureau]
		Keys. More keys. Even more keys. How many locks do these people need?
		-> top

=== review_case_notes(-> go_back_to)
+	{not done || TURNS_SINCE(-> done) > 10}
	[Review my case notes]
	// the conditional ensures you don't get the option to check repeatedly
 	{I|Once again, I} flicked through the notes I'd made so far. Still not obvious suspects.
- 	(done) -> go_back_to

<- childhood_memories(-> next)
*	[Look out of the window]
 	I daydreamed as we rolled along...
 - (next) Then the whistle blew...

*	[Remember my childhood]
	-> think_back ->
*	[Look out of the window]
	I daydreamed as we rolled along...
- 	(next) Then the whistle blew...

=== the_kitchen
- (top)
	<- drawers(-> top)
	<- cupboards(-> top)
	<- room_exits
= drawers (-> goback)
	// choices about the drawers...
	...
= cupboards(-> goback)
	// choices about cupboards
	...
= room_exits
	// exits; doesn't need a "return point" as if you leave, you go elsewhere
	...
