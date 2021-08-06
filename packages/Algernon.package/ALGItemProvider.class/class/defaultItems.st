accessing
defaultItems

	DefaultItems ifNil: [self initializeItems].
	^ DefaultItems