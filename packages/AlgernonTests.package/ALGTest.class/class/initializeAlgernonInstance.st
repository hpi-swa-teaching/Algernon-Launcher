accessing
initializeAlgernonInstance
	AlgernonInstance ifNotNil: 
		[ AlgernonInstance deactivate.
		  AlgernonInstance delete              ].
	self lastResetSeconds: DateAndTime current asSeconds.
	^ self algernonInstance: ALGCore new
