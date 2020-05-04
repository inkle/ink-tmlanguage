=== function changingOfTheGuard
	{!GuardsOnDuty: // "is GuardsOnDuty empty right now?"
		~ GuardsOnDuty = LIST_ALL(Smith)
	- else:
		~ GuardsOnDuty = LIST_INVERT(GuardsOnDuty)
	}

=== wake_here ===
	You wake as the sun rises.
	+	[Eat something] -> eat_something ->
	+	[Make a move]
	-	->->
