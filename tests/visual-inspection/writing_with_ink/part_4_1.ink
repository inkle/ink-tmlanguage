=== crossing_the_date_line ===
*	"Monsieur!"[] I declared with sudden horror. "I have just realised. We have crossed the international date line!"
-	Monsieur Fogg barely lifted an eyebrow. "I have adjusted for it."
*	I mopped the sweat from my brow[]. A relief!
* 	I nodded, becalmed[]. Of course he had!
*  I cursed, under my breath[]. Once again, I had been belittled!

=== crossing_the_date_line(-> return_to) ===
...
-	-> return_to

...

=== outside_honolulu ===
We arrived at the large island of Honolulu.
- (postscript)
	-> crossing_the_date_line(-> done)
- (done)
	-> END

...

=== outside_pitcairn_island ===
The boat sailed along the water towards the tiny island.
- (postscript)
	-> crossing_the_date_line(-> done)
- (done)
	-> END

-> crossing_the_date_line ->

=== crossing_the_date_line ===
// this is a tunnel!
...
- 	->->

...
// this runs the tunnel, then diverts to 'done'
-> crossing_the_date_line -> done
...

...
//this runs one tunnel, then another, then diverts to 'done'
-> crossing_the_date_line -> check_foggs_health -> done
...

=== plains ===
= night_time
	The dark grass is soft under your feet.
	+	[Sleep]
		-> sleep_here -> wake_here -> day_time
= day_time
	It is time to move on.

=== wake_here ===
	You wake as the sun rises.
	+	[Eat something]
		-> eat_something ->
	+	[Make a move]
	-	->->

=== sleep_here ===
	You lie down and try to close your eyes.
	-> monster_attacks ->
	Then it is time to sleep.
	-> dream ->
	->->
