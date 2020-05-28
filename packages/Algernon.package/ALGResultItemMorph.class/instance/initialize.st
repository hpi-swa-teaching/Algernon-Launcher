initialization
initialize
	super initialize.
	self initializeLayout.
	self isTitle
		ifTrue: [self initializeTitleLayout]
		ifFalse: [self initializeIcons.
			self initializeItemLayout]