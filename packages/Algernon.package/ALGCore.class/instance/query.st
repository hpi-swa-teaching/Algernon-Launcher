updating
query
	^ self active
		ifTrue: [self textField contents]
		ifFalse: [self lastInputString]