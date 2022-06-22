initialization
initialize
	super initialize.
	
	self 
		initializeLayout; 
		initializeBounds.
	self isTitle
		ifTrue: [self initializeTitleLayout]
		ifFalse: [self initializeIcons.
			self initializeItemLayout].
	self disableTextMouseEvents.