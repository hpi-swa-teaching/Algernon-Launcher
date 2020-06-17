relevant
isRelevantGiven: aString
	aString ifEmpty: [^ self isRelevantForEmptyString].
	^true