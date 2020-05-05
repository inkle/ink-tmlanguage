=== set_some_variables ===
	~ knows_about_wager = true
	~ x = (x * x) - (y * y) + c
	~ y = 2 * x * y

{ x == 1.2 }
{ x / 2 > 4 }
{ y - 1 <= x * x }

{POW(3, 2)} is 9.
{POW(16, 0.5)} is 4.

~ temp dice_roll = RANDOM(1, 6)

~ temp lazy_grading_for_test_paper = RANDOM(30, 75)

~ temp number_of_heads_the_serpent_has = RANDOM(3, 8)

~ x = 2 / 3
~ y = 7 / 3
~ z = 1.2 / 0.5

{INT(3.2)} is 3.
{FLOOR(4.8)} is 4.
{INT(-4.8)} is -4.
{FLOOR(-4.8)} is -5.

{FLOAT(4)} is, um, still 4.

{ "Yes, please." == "Yes, please." }
{ "No, thank you." != "Yes, please." }
{ "Yes, please" ? "ease" }
