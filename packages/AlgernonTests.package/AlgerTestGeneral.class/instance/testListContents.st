testing
testListContents

	self ensureMorphic.
	self assert: (algerstance itemProvider relevantItemsFor:'Algernon') size > 0