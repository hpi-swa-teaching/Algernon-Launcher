testing
testBreadcrumbs

	|searchTerm|
	searchTerm := 'test'.
	
	self runQuery: searchTerm.
	self algInstance selectNext.
	[self algInstance currentItem hasChildren] whileFalse:  [self algInstance selectNext].
	self algInstance showChildList.
	self assert: self currentQuery isEmpty.
	self algInstance showParentList.
	self assert: self currentQuery equals: searchTerm.	
	ALGCore close. 