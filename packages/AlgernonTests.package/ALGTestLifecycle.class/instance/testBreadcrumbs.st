testing
testBreadcrumbs

	|searchTerm|
	searchTerm := 'test'.
	
	self runQuery: searchTerm.
	self algerInstance selectNext.
	[self algerInstance currentItem hasChildren] whileFalse:  [self algerInstance selectNext].
	self algerInstance showChildList.
	self assert: self currentQuery isEmpty.
	self algerInstance showParentList.
	self assert: self currentQuery equals: searchTerm.	
	Algernon close. 