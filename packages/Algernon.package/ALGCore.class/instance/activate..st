visibility
activate: hand
	
	self active ifTrue: [^ self].
	self 
		active: true; 
		reset;
		backupFocus: self activeHand;
		grabFocus: self activeHand;		
		initializeBackground;
		showMorphs;
		openInWorld.
	self textField contents: self class lastInputString;
		selectAll
	
