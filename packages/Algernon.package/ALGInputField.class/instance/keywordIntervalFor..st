highlighting
keywordIntervalFor: aString
	| parts |
	parts := aString subStrings: ALGItemProvider searchDelimeter.
	parts isEmpty ifTrue: [^ (0 to: 0)].
	
	(self keywords contains: [:each | each = parts first])
		ifTrue: [^ (1 to: parts first size)] 
		ifFalse: [^ (0 to: 0)]