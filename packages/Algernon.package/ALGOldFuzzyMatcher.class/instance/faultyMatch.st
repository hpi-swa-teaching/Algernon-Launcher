matching
faultyMatch

	(self foundChars < self class minFaultToleranceLength)
		ifTrue: [ self isMatch: false ]
		ifFalse: [ self lastPosition: self positionBackup ]