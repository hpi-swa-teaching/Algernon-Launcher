testing
testResultListMovement
	| item |
	self runQuery: 'Algernon'.
	item := self algerInstance currentItem.
	self algerInstance selectNext.
	self algerInstance selectPrevious.
	self assert: (self algerInstance currentItem = item).