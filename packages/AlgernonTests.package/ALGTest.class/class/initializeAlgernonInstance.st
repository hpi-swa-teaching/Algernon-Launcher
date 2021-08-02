accessing
initializeAlgernonInstance
	AlgernonInstance ifNotNil: [ :instance | instance delete ].
	self lastResetSeconds: DateAndTime current asSeconds.
	^ self algernonInstance: ALGCore new