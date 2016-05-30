testing
testSingleResultList
	
	Algernon open.
	Algernon currentInstance textField contents: 'stuff'.
	Algernon currentInstance updateItemList.
	
	self assert: 1 equals: ((World submorphs select: [ :aMorph | aMorph isKindOf: Algernon] thenCollect: [ :anAlgernon | self  numberOfResultListsFor: anAlgernon ]) sum).
	
	Algernon 
		close;
		open.
			
	Algernon currentInstance textField contents: 'test'.
	Algernon currentInstance updateItemList.
	self assert: 1 equals: ((World submorphs select: [ :aMorph | aMorph isKindOf: Algernon] thenCollect: [ :anAlgernon | self  numberOfResultListsFor: anAlgernon ]) sum).
	
	Algernon close.