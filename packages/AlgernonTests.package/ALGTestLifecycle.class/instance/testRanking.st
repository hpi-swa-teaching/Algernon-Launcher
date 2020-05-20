testing
testRanking
	"Make sure the rank increases when an entry is selected"
	| firstRank secondRank |
	self ensureMorphic.

	firstRank := (algerInstance itemProvider relevantItemsFor: 'Algernon') first rank.

	algerInstance show.
	algerInstance textField contents:'Algernon'.
	algerInstance updateItemList.
	algerInstance doActionOnSelectedEvent: nil. 

	secondRank := (algerInstance itemProvider relevantItemsFor: 'Algernon') first rank.

	self assert: firstRank < secondRank