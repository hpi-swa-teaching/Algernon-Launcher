testing
testSingleResultList
	self runQuery: 'stuff'.
	self assert: 1 equals: ((World submorphs select: [ :aMorph | aMorph isKindOf: Algernon] thenCollect: [ :anAlgernon | self  numberOfResultListsFor: anAlgernon ]) sum).	
	Algernon 
		close;
		open.
	self runQuery: 'test'.
	self assert: 1 equals: ((World submorphs select: [ :aMorph | aMorph isKindOf: Algernon] thenCollect: [ :anAlgernon | self  numberOfResultListsFor: anAlgernon ]) sum).	
	Algernon close.