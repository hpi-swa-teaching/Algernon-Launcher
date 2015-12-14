filtering
tokenize: aString

	| parts |
	parts := aString subStrings: self class searchDelimeter.
	(parts isEmpty)
		ifTrue: [ ^ OrderedCollection newFrom: {''} ].
	^ parts