testing
testRanking
	"Make sure the rank increases when an entry is selected"
	| firstRank secondRank |
	self ensureMorphic.
	algerstance class initializeAlgertems.

	firstRank := (algerstance relevantAlgertemsFor: 'Algernon') first rank.

	algerstance show.
	algerstance textField contents:'Algernon'.
	algerstance updateItemList.
	algerstance selectNext.
	algerstance doActionOnSelectedEvent:nil.

	secondRank := (algerstance relevantAlgertemsFor: 'Algernon') first rank.

	self assert: firstRank < secondRank.

	^ nil