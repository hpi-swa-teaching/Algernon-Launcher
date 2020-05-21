testing
testRanking
	"Make sure the rank increases when an entry is selected"
	| firstRank secondRank |

	firstRank := (algerInstance itemProvider relevantItemsFor: 'Algernon') first rank.
	
	self runQuery: 'Algernon'.

	algerInstance doActionOnSelectedEvent: nil. 

	secondRank := (algerInstance itemProvider relevantItemsFor: 'Algernon') first rank.

	self assert: firstRank < secondRank