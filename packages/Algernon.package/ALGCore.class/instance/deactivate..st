visibility
deactivate: hand 
	self active ifFalse: [^ self].
	self lastInputString: self topmostQuery.
	self active: false;
		 reset;
		 stopStepping;
		 hideMorphs.
	ALGInstallation instance cleanupIfNewDay.
	hand ifNotNil: [self dropFocus: hand]