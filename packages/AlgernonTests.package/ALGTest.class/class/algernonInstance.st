accessing
algernonInstance
	^ ((AlgernonInstance isNil
			or: [DateAndTime current asSeconds - self lastResetSeconds > 30])
			or: [AlgernonInstance owner isNil]) "has the core been deleted"
		ifTrue: [self initializeAlgernonInstance]
		ifFalse: [AlgernonInstance]