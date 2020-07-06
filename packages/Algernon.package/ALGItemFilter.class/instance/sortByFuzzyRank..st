accessing
sortByFuzzyRank: anItemCollection
	^ (anItemCollection select: [ :each | each fuzzyRank isNil not ]) sort: [ :a :b | (b fuzzyRank) < (a fuzzyRank) ].