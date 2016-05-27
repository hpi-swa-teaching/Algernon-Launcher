visibility
deactivate: hand

	self active ifFalse: [^ self].
	self class lastInputString: self textField contents.
	self
		active: false;
		reset;
		stopStepping;
		hideMorphs