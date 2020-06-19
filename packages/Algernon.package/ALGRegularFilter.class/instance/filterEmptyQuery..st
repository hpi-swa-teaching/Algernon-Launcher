filtering
filterEmptyQuery: anItemCollection
	^ (anItemCollection first: (anItemCollection size min: self minimumItemsToCompute))
		 do: [ :each | each fuzzyRank: 0 ].