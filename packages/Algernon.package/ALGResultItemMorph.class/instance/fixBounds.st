drawing
fixBounds
	(self isTitle)
		ifTrue: [ self initializeTitleBounds ]
		ifFalse: [ self initializeItemBounds ]