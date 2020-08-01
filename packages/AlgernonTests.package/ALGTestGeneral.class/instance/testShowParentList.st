testing navigation
testShowParentList

	|searchTerm list|
	searchTerm := 'test'.
	self runQuery: searchTerm.
	
	self algInstance selectNext.
	list := self algInstance itemList.
	[self algInstance currentItem hasChildren] whileFalse:  [self algInstance selectNext].
	self algInstance showChildList.
	self assert: self algInstance itemList hasItems.
	self assert: list ~= self algInstance itemList.