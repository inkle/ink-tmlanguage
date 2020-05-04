CONST HASTINGS = "Hastings"
CONST POIROT = "Poirot"
CONST JAPP = "Japp"

VAR current_chief_suspect = HASTINGS

=== review_evidence ===
	{ found_japps_bloodied_glove:
		~ current_chief_suspect = POIROT
	}
	Current Suspect: {current_chief_suspect}

CONST PI = 3.14
CONST VALUE_OF_TEN_POUND_NOTE = 10

CONST LOBBY = 1
CONST STAIRCASE = 2
CONST HALLWAY = 3

CONST HELD_BY_AGENT = -1

VAR secret_agent_location = LOBBY
VAR suitcase_location = HALLWAY

=== report_progress ===
{  secret_agent_location == suitcase_location:
	The secret agent grabs the suitcase!
	~ suitcase_location = HELD_BY_AGENT

-  secret_agent_location < suitcase_location:
	The secret agent moves forward.
	~ secret_agent_location++
}
