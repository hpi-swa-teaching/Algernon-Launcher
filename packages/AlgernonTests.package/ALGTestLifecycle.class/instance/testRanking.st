testing
testRanking
	"Make sure the rank increases when an entry is selected"
	| firstRank secondRank |

	firstRank := (algerInstance itemProvider relevantItemsFor: 'Algernon') first rank.
	
	self runQuery: 'Algernon'.

	self activateCurrentItemAction.

	secondRank := (algerInstance itemProvider relevantItemsFor: 'Algernon') first rank.

	self assert: firstRank < secondRank