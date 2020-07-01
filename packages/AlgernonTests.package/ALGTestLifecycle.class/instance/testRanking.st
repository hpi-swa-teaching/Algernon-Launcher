testing
testRanking
	"Make sure the rank increases when an entry is selected"
	| firstRank secondRank |

	firstRank := (algerInstance itemProvider searchForItems: 'Algernon') first rank.
	
	self runQuery: 'Algernon'.

	self activateCurrentItemAction.

	secondRank := (algerInstance itemProvider searchForItems: 'Algernon') first rank.

	self assert: firstRank < secondRank