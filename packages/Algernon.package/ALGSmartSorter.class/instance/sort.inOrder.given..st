sorting
sort: aList inOrder: aSymbol given: aString

	| newList sortBlock |
	sortBlock := [ :a :b | a isLessThan: b given: aString asLowercase ].
	(aSymbol = #desc)
		ifTrue: [ sortBlock := [ :a :b | b isLessThan: a given: aString asLowercase ] ].
	newList := SortedCollection sortBlock: sortBlock.
	aList do: [ :each | newList add: each ].
	^ newList