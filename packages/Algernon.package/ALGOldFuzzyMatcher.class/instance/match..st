matching
match: aChar

	self positionBackup: self lastPosition.
	self lastPosition: (self itemName findString: aChar startingAt: (self lastPosition + 1)).
	(self lastPosition = 0)
		ifTrue: [ self faultyMatch ]
		ifFalse: [ self registerMatch ]