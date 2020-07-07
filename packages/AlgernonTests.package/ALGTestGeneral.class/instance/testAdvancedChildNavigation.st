testing
testAdvancedChildNavigation
	| oldQuery |
	self runQuery: 'AlgernonTests'.
	self moveCursorTo: 'Category'.
	oldQuery := self currentQuery.
	self algerInstance showChildList.
	self algerInstance showChildList. "Navigate all the way in"
	self algerInstance showParentList.
	self algerInstance showParentList.
	self assert: (oldQuery = (self currentQuery))