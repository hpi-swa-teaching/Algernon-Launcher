filtering
tokenize: aString

	| parts |
	parts := aString subStrings: self class searchDelimeter.
	parts ifEmpty: [ ^ OrderedCollection newFrom: {''} ].
	^ parts