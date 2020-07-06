accessing
initializeAlgernonInstance
	self lastResetSeconds:Date today asSeconds.
	^self algernonInstance: ALGCore new.
