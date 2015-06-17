stepping
step
	self updateItemList.
	(self lastInputTime)
		ifNil: [ ^ self ].
	self stopStepping
	
	