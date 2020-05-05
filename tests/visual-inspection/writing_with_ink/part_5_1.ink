LIST kettleState = cold, boiling, recently_boiled

~ kettleState = cold

*	[Turn on kettle]
	The kettle begins to bubble and boil.
	~ kettleState = boiling

*	[Touch the kettle]
	{ kettleState == cold:
		The kettle is cool to the touch.
	- else:
	 	The outside of the kettle is very warm!
	}

LIST kettleState = cold, (boiling), recently_boiled
// at the start of the game, this kettle is switched on. Edgy, huh?
