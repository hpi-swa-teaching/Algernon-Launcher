testing
testShowParentList

	|searchTerm list|
	searchTerm := 'test'.
	self runQuery: searchTerm.
	
	self algerInstance selectNext.
	list := self algerInstance itemList.
	[self algerInstance currentItem hasChildren] whileFalse:  [self algerInstance selectNext].
	self algerInstance showChildList.
	self assert: self algerInstance itemList hasItems.
	self assert: list ~= self algerInstance itemList.
	self algerInstance close.