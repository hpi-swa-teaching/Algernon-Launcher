testing
testSingleResultList
	
	| resultListCount |
	resultListCount := ALGResultList allInstances size.
	Algernon open.
	Algernon currentInstance textField contents: 'stuff'.
	self assert: 1 equals: (ALGResultList allInstances size - resultListCount).
	Algernon
			close;
			open.
	Algernon currentInstance textField contents: 'other'.
	self assert: 1 equals: (ALGResultList allInstances size - resultListCount).
	Algernon close