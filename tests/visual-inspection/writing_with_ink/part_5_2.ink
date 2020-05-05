LIST daysOfTheWeek = Monday, Tuesday, Wednesday, Thursday, Friday
VAR today = Monday
VAR tomorrow = Tuesday

LIST heatedWaterStates = cold, boiling, recently_boiled
VAR kettleState = cold
VAR potState = cold

*	{kettleState == cold} [Turn on kettle]
	The kettle begins to boil and bubble.
	~ kettleState = boiling
*	{potState == cold} [Light stove]
 	The water in the pot begins to boil and bubble.
 	~ potState = boiling

LIST heatedWaterStates = cold, boiling, recently_boiled
VAR kettleState = cold
VAR potState = cold
VAR microwaveState = cold

=== function boilSomething(ref thingToBoil, nameOfThing)
	The {nameOfThing} begins to heat up.
	~ thingToBoil = boiling

=== do_cooking
*	{kettleState == cold} [Turn on kettle]
	{boilSomething(kettleState, "kettle")}
*	{potState == cold} [Light stove]
	{boilSomething(potState, "pot")}
*	{microwaveState == cold} [Turn on microwave]
	{boilSomething(microwaveState, "microwave")}

LIST heatedWaterStates = cold, boiling, recently_boiled
VAR kettleState = cold
VAR potState = cold
VAR microwaveState = cold

=== cook_with(nameOfThing, ref thingToBoil)
+ 	{thingToBoil == cold} [Turn on {nameOfThing}]
  	The {nameOfThing} begins to heat up.
	~ thingToBoil = boiling
	-> do_cooking.done

=== do_cooking
<- cook_with("kettle", kettleState)
<- cook_with("pot", potState)
<- cook_with("microwave", microwaveState)
- (done)

LIST colours = red, green, blue, purple
LIST moods = mad, happy, blue

VAR status = blue

VAR status = colours.blue

{ statesOfGrace == statesOfGrace.fallen:
	// is the current state "fallen"
}

LIST statesOfGrace = ambiguous, saintly, fallen

LIST statesOfGrace = ambiguous, saintly, fallen

~ statesOfGrace = 3.1415 // set the variable to a number not a list value

~ temp anotherStateOfGrace = statesOfGrace.saintly

