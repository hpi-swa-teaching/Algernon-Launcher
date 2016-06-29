sorting
sort: aList inOrder: aSymbol

	| sortBlock |
	sortBlock := [ :a :b | a isLessThan: b].
	(aSymbol = #desc)
		ifTrue: [ sortBlock := [ :a :b | b isLessThan: a ] ].
	^ aList asSortedCollection: sortBlock.