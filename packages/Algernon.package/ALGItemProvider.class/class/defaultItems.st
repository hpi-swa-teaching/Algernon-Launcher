constants
defaultItems

	DefaultItems ifNil: [self initializeItems].
	^ DefaultItems