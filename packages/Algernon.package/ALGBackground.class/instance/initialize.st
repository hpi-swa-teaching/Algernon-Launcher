initialization
initialize
	super initialize.
	self color: self class backgroundColor;
		 extent: World extent;
		 center: World center;
		 borderWidth: 0.
	self currentWorld addMorphFront: self.
	self hide