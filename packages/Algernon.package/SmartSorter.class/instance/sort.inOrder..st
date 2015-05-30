sorting
sort: aList inOrder: aSymbol

	| newList sortBlock |
	sortBlock := [ :a :b | a isLessThan: b].
	(aSymbol = #desc)
		ifTrue: [ sortBlock := [ :a :b | b isLessThan: a ] ].
	newList := SortedCollection sortBlock: sortBlock.
	aList do: [ :each | newList add: each ].
	^ newList