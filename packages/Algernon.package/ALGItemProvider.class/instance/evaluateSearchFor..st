filtering
evaluateSearchFor: aString
	| items parts |
	parts := aString subStrings: self class searchDelimeter.
	items := OrderedCollection new.
	(parts size > 1)
		ifTrue: [ items := self multipartSearchWith: parts ]
		ifFalse: [ items := self regularSearchWith: aString ].
	^ sorter sort: items given: aString