LIST volumeLevel = off, quiet, medium, loud, deafening
VAR lecturersVolume = quiet
VAR murmurersVolume = quiet

{ lecturersVolume < deafening:
	~ lecturersVolume++

	{ lecturersVolume > murmurersVolume:
		~ murmurersVolume++
		The murmuring gets louder.
	}
}

The lecturer's voice becomes {lecturersVolume}.

The lecturer has {LIST_VALUE(deafening) - LIST_VALUE(lecturersVolume)} notches still available to him.

LIST Numbers = one, two, three
VAR score = one
~ score = Numbers(2) // score will be "two"

LIST primeNumbers = two = 2, three = 3, five = 5
LIST primeNumbers = two = 2, three, five = 5
