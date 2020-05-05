LIST GuardsOnDuty = (Smith), (Jones), Carter, Braithwaite

=== function changingOfTheGuard
	~ GuardsOnDuty = LIST_INVERT(GuardsOnDuty)

=== function changingOfTheGuard
	{!GuardsOnDuty: // "is GuardsOnDuty empty right now?"
		~ GuardsOnDuty = LIST_ALL(Smith)
	- else:
		~ GuardsOnDuty = LIST_INVERT(GuardsOnDuty)
	}

~ list = ~ list

LIST CoreValues = strength, courage, compassion, greed, nepotism, self_belief, delusions_of_godhood
VAR desiredValues = (strength, courage, compassion, self_belief )
VAR actualValues =  ( greed, nepotism, self_belief, delusions_of_godhood )

{desiredValues ^ actualValues} // prints "self_belief"

{desiredValues ^ actualValues: The new president has at least one desirable quality.}

{LIST_COUNT(desiredValues ^ actualValues) == 1: Correction, the new president has only one desirable quality. {desiredValues ^ actualValues == self_belief: It's the scary one.}}
