visibility
deactivate: hand

	self active ifFalse: [^ self].
	self class lastInputString: self textField contents.
	self
		dropFocus: hand;
		active: false;
		reset;
		stopStepping;
		hideMorphs