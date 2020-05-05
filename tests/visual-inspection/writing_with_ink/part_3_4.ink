=== near_north_pole ===
	~ temp number_of_warm_things = 0
	{ blanket:
		~ number_of_warm_things++
	}
	{ ear_muffs:
		~ number_of_warm_things++
	}
	{ gloves:
		~ number_of_warm_things++
	}
	{ number_of_warm_things > 2:
		Despite the snow, I felt incorrigibly snug.
	- else:
		That night I was colder than I have ever been.
	}

*	[Accuse Hasting]
		-> accuse("Hastings")
*	[Accuse Mrs Black]
		-> accuse("Claudia")
*	[Accuse myself]
		-> accuse("myself")

=== accuse(who) ===
	"I accuse {who}!" Poirot declared.
	"Really?" Japp replied. "{who == "myself":You did it?|{who}?}"
	"And why not?" Poirot shot back.

-> add_one_to_one_hundred(0, 1)

=== add_one_to_one_hundred(total, x) ===
	~ total = total + x
	{ x == 100:
		-> finished(total)
	- else:
		-> add_one_to_one_hundred(total, x + 1)
	}

=== finished(total) ===
	"The result is {total}!" you announce.
	Gauss stares at you in horror.
	-> END

=== sleeping_in_hut ===
	You lie down and close your eyes.
	-> generic_sleep (-> waking_in_the_hut)

===	 generic_sleep (-> waking)
	You sleep perchance to dream etc. etc.
	-> waking

=== waking_in_the_hut
	You get back to your feet, ready to continue your journey.

=== sleeping_in_hut ===
	You lie down and close your eyes.
	-> generic_sleep (waking_in_the_hut)
