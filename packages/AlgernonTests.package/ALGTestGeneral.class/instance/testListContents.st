testing
testListContents
	self ensureMorphic.
	self deny: (algerInstance itemProvider relevantItemsFor:'Algernon') isEmpty