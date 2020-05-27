visibility
deactivate: hand 
	self active
		ifFalse: [^ self].
	self class lastInputString: self firstOnSearchStack.
	self active: false;
		 reset;
		 stopStepping;
		 hideMorphs.
	hand
		ifNotNil: [self dropFocus: hand]