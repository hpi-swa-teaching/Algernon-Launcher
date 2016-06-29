sorting
sort: aList inOrder: aSymbol given: aString

	| sortBlock |
	(aSymbol = #desc)
		ifTrue: [ sortBlock := [ :a :b | b isLessThan: a given: aString asLowercase]]
		ifFalse: [ sortBlock := [ :a :b | a isLessThan: b given: aString asLowercase]].
	^ aList asSortedCollection: sortBlock.