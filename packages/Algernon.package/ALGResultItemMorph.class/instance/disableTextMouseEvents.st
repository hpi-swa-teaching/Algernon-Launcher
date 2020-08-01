event handling
disableTextMouseEvents
	{self titleMorph. self nameMorph. self actionMorph}
		do: [:morph | 
			morph extension isPartsDonor: true.
			morph releaseEditor]
		without: nil