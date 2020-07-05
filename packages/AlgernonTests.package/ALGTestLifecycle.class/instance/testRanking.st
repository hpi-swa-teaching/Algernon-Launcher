testing
testRanking
	"Make sure the rank increases when an entry is selected"
	| firstRank secondRank |

	firstRank := (self algInstance itemProvider searchForItems: 'Algernon') first rank.
	
	self runQuery: 'Algernon'.

	self activateCurrentItemAction.

	secondRank := (self algInstance itemProvider searchForItems: 'Algernon') first rank.

	self assert: firstRank < secondRank