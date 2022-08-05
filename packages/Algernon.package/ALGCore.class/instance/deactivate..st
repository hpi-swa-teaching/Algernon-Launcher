visibility
deactivate: hand 

	self active ifFalse: [^ self].
	self lastInputString: self topmostQuery.
	self active: false;
		 reset;
		 stopStepping;
		 hideMorphs.
	hand ifNotNil: [self dropFocus: hand].
	ALGInstallation instance cleanupIfNewDay.
	self resetStatusMessage