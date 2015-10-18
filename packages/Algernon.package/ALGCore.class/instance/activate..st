visibility
activate: hand
	
	self active ifTrue: [^ self].
	self 
		active: true; 
		reset; 
		grabFocus: self activeHand;
		initializeBackground;
		showMorphs;
		openInWorld
	
