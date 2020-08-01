testing
testBreadcrumbsList

	|searchTerm size|
	searchTerm := 'test'.
	
	self runQuery: searchTerm.
	self algInstance selectNext.
	size := self algInstance breadcrumbCount.
	[self algInstance currentItem hasChildren] whileFalse:  [self algInstance selectNext].
	self algInstance showChildList.
	self assert: self algInstance breadcrumbCount equals: size + 1.
	Algernon close.