accessing
algernonInstance
	^ (AlgernonInstance isNil
			or: [Date today asSeconds - self lastResetSeconds > 30])
		ifTrue: [self initializeAlgernonInstance]
		ifFalse: [AlgernonInstance]