initialization
initialize

	super initialize.
	self initializeIcons.
	(self isTitle)
		ifTrue: [ self initializeTitleLayout ]
		ifFalse: [ self initializeItemLayout ]