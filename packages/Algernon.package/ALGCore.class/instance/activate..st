visibility
activate: hand
	self active ifTrue: [^ self].
	self 
		active: true; 
		reset;
		backupFocus: self activeHand;
		grabFocus: self activeHand;	
		checkWorldBounds;	
		initializeBackground;
		showMorphs;
		openInWorld.
	self startStepping.
	self textField contents: self lastInputString;
		selectAll
	
