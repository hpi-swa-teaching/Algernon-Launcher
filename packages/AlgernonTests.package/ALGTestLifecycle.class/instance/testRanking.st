testing
testRanking
	"Make sure the rank increases when an entry is selected"
	| firstRank |
	self runQuery: 'Algernon'.
	firstRank := self items first rank.
	self activateCurrentItemAction.
	self assert: firstRank < self items first rank