testing
testSingleResultList
	self runQuery: 'stuff'.
	self assert: 1 equals: (World submorphs
			select: [:aMorph | aMorph isKindOf: ALGCore]
			thenCollect: [:anAlgernon | self numberOfResultListsFor: anAlgernon]) sum.
	self algerInstance deactivate: nil;
		 activate.
	self runQuery: 'test'.
	self assert: 1 equals: (World submorphs
			select: [:aMorph | aMorph isKindOf: ALGCore]
			thenCollect: [:anAlgernon | self numberOfResultListsFor: anAlgernon]) sum