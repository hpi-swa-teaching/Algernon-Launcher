sorting
sort: aList inOrder: aSymbol given: aString

	| newList sortBlock lowercaseString |
	lowercaseString := aString asLowercase.
	sortBlock := [ :a :b | a isLessThan: b given: lowercaseString ].
	(aSymbol = #desc)
		ifTrue: [ sortBlock := [ :a :b | b isLessThan: a given: lowercaseString ] ].
	newList := SortedCollection sortBlock: sortBlock.
	aList do: [ :each | newList add: each ].
	^ newList