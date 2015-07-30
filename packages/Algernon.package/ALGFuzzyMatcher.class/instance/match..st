matching
match: aChar

	self positionBackup: self lastPosition.
	self lastPosition: (self itemName findString: aChar startingAt: (self lastPosition + 1)).
	(self lastPosition = 0)
		ifTrue: [ (self foundChars < self class minFaultToleranceLength)
					ifTrue: [ self isMatch: false ]
					ifFalse: [ self lastPosition: self positionBackup ] ]
		ifFalse: [ self foundChars: (self foundChars + 1).
				 self matchingPositions add: self lastPosition ]