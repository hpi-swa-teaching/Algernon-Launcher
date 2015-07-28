initialization
initialize
	
	super initialize.
	self
		color: self class backgroundColor;
		extent: World extent;
		center: World center;
		borderWidth: 0