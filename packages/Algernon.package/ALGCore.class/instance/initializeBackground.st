initialization
initializeBackground
	| background |
	background := ALGBackground new
		color: (Color white alpha: 0.3);
		extent: World extent;
		center: World center;
		borderWidth: 0.
	self addMorph: background.