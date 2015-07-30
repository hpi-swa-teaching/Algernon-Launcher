caching
keyFor: aString level: aNumber parent: anItem

	(aNumber = 0)
		ifFalse: [ ^ aString, '#', aNumber, '#', anItem lowerCaseName ].
	^ aString