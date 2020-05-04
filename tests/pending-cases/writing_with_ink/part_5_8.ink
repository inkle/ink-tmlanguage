LIST GameEvents = foundSword, openedCasket, metGorgon
{ GameEvents ? openedCasket }
{ GameEvents ? (foundSword, metGorgon) }
~ GameEvents += metGorgon

LIST PancakeState = ingredients_gathered, batter_mix, pan_hot, pancakes_tossed, ready_to_eat
{ PancakeState == batter_mix }
{ PancakeState < ready_to_eat }
~ PancakeState++

LIST OnOffState = on, off
LIST ChargeState = uncharged, charging, charged

VAR PhoneState = (off, uncharged)

*	{PhoneState !? uncharged } [Plug in phone]
	~ PhoneState -= LIST_ALL(ChargeState)
	~ PhoneState += charging
	You plug the phone into charge.
*	{ PhoneState ? (on, charged) } [ Call my mother ]

