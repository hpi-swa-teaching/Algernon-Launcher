accessing
algernonInstance
	^ (AlgernonInstance isNil
			or: [DateAndTime current asSeconds - self lastResetSeconds > 30])
		ifTrue: [self initializeAlgernonInstance]
		ifFalse: [AlgernonInstance]