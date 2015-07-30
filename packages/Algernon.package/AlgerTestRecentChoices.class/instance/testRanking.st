testing
testRanking
	"Make sure the rank increases when an entry is selected"
	| firstRank secondRank |
	self ensureMorphic.
	algerstance class initializeAlgertems.

	firstRank := (algerstance itemProvider relevantItemsFor: 'Algernon') first rank.

	algerstance show.
	algerstance textField contents:'Algernon'.
	algerstance updateItemList.
	algerstance doActionOnSelectedEvent: nil. 

	secondRank := (algerstance itemProvider relevantItemsFor: 'Algernon') first rank.

	self assert: firstRank < secondRank.

	^ nil