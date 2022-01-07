INCLUDE extra_knots.ink

// Local diverts
-> knot
-> knot.knot_gather

-> knot.stitch
-> knot.stitch.stitch_choice
-> knot.stitch.stitch_gather

// Cross-files diverts
-> extra_knot
-> extra_knot.extra_knot_gather

-> extra_knot.extra_stitch
-> extra_knot.extra_stitch.extra_stitch_gather

=== knot ===
Hello lala
- (knot_gather) Named Gather
-> DONE

= stitch
* (stitch_choice) Named Choice
- (stitch_gather) Named Gather
-> DONE
