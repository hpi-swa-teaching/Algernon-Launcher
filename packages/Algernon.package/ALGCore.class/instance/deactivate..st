visibility
deactivate: hand 
	self active
		ifFalse: [^ self].
	self lastInputString: self topmostQuery.
	self lastWorldBounds: World bounds corner.
	self active: false;
		 reset;
		 stopStepping;
		 hideMorphs.
	hand
		ifNotNil: [self dropFocus: hand]