visibility
deactivate: hand

	self active ifFalse: [^ self].
	self
		active: false;
		reset;
		stopStepping;
		hideMorphs