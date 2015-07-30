testing
testListContents
	"Make sure Lists are okay"
	self ensureMorphic.

	self assert: (algerstance itemProvider relevantItemsFor:'Algernon') size > 0.

	^ nil