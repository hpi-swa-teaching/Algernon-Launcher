testing stepping interaction
testResultListMovement
	| item |
	self runQuery: 'Algernon'.
	item := self algInstance currentItem.
	self algInstance selectNext.
	self algInstance selectPrevious.
	self assert: (self algInstance currentItem = item).