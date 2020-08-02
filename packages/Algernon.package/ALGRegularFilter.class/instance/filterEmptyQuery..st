filtering
filterEmptyQuery: anItemCollection
	^ self sortByFuzzyRank: ((anItemCollection first: (anItemCollection size min: self class emptyQueryLimit))
		 do: [ :each | each fuzzyRank: 0 ]).