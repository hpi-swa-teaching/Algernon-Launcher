testing
testAdvancedChildNavigation
	| oldQuery |
	self runQuery: 'AlgernonTests'.
	self moveCursorTo: 'Category'.
	oldQuery := self currentQuery.
	self algInstance showChildList.
	self algInstance showChildList. "Navigate all the way in"
	self algInstance showParentList.
	self algInstance showParentList.
	self assert: (oldQuery = (self currentQuery))