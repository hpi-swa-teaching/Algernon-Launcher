accessing
initializeAlgernonInstance
	self lastResetSeconds: DateAndTime current asSeconds.
	^ self algernonInstance: ALGCore new