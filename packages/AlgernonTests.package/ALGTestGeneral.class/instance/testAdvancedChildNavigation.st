testing navigation
testAdvancedChildNavigation
	| oldQuery |
	self runQuery: 'AlgernonTests' withCursorAt: 'Category'.
	oldQuery := self currentQuery.
	self algInstance showChildList.
	self algInstance showChildList. "Navigate all the way in"
	self algInstance showParentList.
	self algInstance showParentList.
	self assert: oldQuery equals: self currentQuery