initialization
initialize
	super initialize.
	self initializeLayout.
	self isTitle
		ifTrue: [self initializeTitleBounds.
			self initializeTitleLayout]
		ifFalse: [self initializeItemBounds.
			self initializeIcons.
			self initializeItemLayout].
	self disableTextMouseEvents.