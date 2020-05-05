=== function say_yes_to_everything ===
	~ return true

=== function lerp(a, b, k) ===
	~ return ((b - a) * k) + a

~ x = lerp(2, 8, 0.3)

*	{say_yes_to_everything()} 'Yes.'

=== function say_no_to_nothing ===
	~ return say_yes_to_everything()

=== function harm(x) ===
	{ stamina < x:
		~ stamina = 0
	- else:
		~ stamina = stamina - x
	}

Monsieur Fogg was looking {describe_health(health)}.

=== function describe_health(x) ===
{
- x == 100:
	~ return "spritely"
- x > 75:
	~ return "chipper"
- x > 45:
	~ return "somewhat flagging"
- else:
	~ return "despondent"
}

=== function max(a,b) ===
	{ a < b:
		~ return b
	- else:
		~ return a
	}

=== function exp(x, e) ===
	// returns x to the power e where e is an integer
	{ e <= 0:
		~ return 1
	- else:
		~ return x * exp(x, e - 1)
	}

~ price = 15

I pulled out {print_num(price)} coins from my pocket and slowly counted them.
"Oh, never mind," the trader replied. "I'll take half." And she took {print_num(price / 2)}, and pushed the rest back over to me.

=== function alter(ref x, k) ===
	~ x = x + k

~ gold = gold + 7
~ health = health - 4

~ alter(gold, 7)
~ alter(health, -4)

*	I ate a biscuit[] and felt refreshed. {alter(health, 2)}
* 	I gave a biscuit to Monsieur Fogg[] and he wolfed it down most undecorously. {alter(foggs_health, 1)}
-	<> Then we continued on our way.
