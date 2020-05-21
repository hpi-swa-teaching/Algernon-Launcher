testing
testBreadcrumbs

	|searchTerm|
	searchTerm := 'test'.
	
	self runQuery: searchTerm.
	Algernon currentInstance selectNext.
	[Algernon currentInstance currentItem hasChildren] whileFalse:  [Algernon currentInstance selectNext].
	Algernon currentInstance showChildList.
	self assert: Algernon currentInstance textField contents isEmpty.
	Algernon currentInstance showParentList.
	self assert: Algernon currentInstance textField contents equals: searchTerm.	
	Algernon close. 