LIST Characters = Alfred, Batman, Robin
LIST Props = champagne_glass, newspaper

VAR BallroomContents = (Alfred, Batman, newspaper)
VAR HallwayContents = (Robin, champagne_glass)

=== function describe_room(roomState)
	{ roomState ? Alfred: Alfred is here, standing quietly in a corner. } { roomState ? Batman: Batman's presence dominates all. } { roomState ? Robin: Robin is all but forgotten. }
	<> { roomState ? champagne_glass: A champagne glass lies discarded on the floor. } { roomState ? newspaper: On one table, a headline blares out WHO IS THE BATMAN? AND *WHO* IS HIS BARELY-REMEMBERED ASSISTANT? }

{ describe_room(BallroomContents) }
{ describe_room(HallwayContents) }

*	{ currentRoomState ? (Batman, Alfred) } [Talk to Alfred and Batman]
	'Say, do you two know each other?'

LIST OnOff = on, off
LIST HotCold = cold, warm, hot

VAR kettleState = off, cold

=== function turnOnKettle() ===
{ kettleState ? hot:
	You turn on the kettle, but it immediately flips off again.
- else:
	The water in the kettle begins to heat up.
	~ kettleState -= off
	~ kettleState += on
	// note we avoid "=" as it'll remove all existing states
}

=== function can_make_tea() ===
	~ return kettleState ? (hot, off)

=== function changeStateTo(ref stateVariable, stateToReach)
	// remove all states of this type
	~ stateVariable -= LIST_ALL(stateToReach)
	// put back the state we want
	~ stateVariable += stateToReach

~ changeState(kettleState, on)
~ changeState(kettleState, warm)

LIST Letters = a,b,c
LIST Numbers = one, two, three

VAR mixedList = (a, three, c)

{LIST_ALL(mixedList)}   // a, one, b, two, c, three
{LIST_COUNT(mixedList)} // 3
{LIST_MIN(mixedList)}   // a
{LIST_MAX(mixedList)}   // three or c, albeit unpredictably

{mixedList ? (a,b) }        // false
{mixedList ^ LIST_ALL(a)}   // a, c

{ mixedList >= (one, a) }   // true
{ mixedList < (three) }     // false

{ LIST_INVERT(mixedList) }            // one, b, two
