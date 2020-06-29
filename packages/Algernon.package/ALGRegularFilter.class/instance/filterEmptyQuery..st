filtering
filterEmptyQuery: anItemCollection
	^ (anItemCollection first: (anItemCollection size min: self class emptyQueryLimit))
		 do: [ :each | each fuzzyRank: 0 ].