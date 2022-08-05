external command processing
waitForCommand: aString

	self commandHistory add: aString.
	
	^ self class newWith: false