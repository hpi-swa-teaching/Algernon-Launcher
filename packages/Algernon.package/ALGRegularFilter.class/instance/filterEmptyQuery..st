filtering
filterEmptyQuery: anItemCollection
	^ anItemCollection do: [ :each | each fuzzyRank: 0 ].