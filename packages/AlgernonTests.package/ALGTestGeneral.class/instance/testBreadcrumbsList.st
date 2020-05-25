testing
testBreadcrumbsList

	|searchTerm size|
	searchTerm := 'test'.
	
	self runQuery: searchTerm.
	self algerInstance selectNext.
	size := self algerInstance breadcrumbs submorphs size.
	[self algerInstance currentItem hasChildren] whileFalse:  [self algerInstance selectNext].
	self algerInstance showChildList.
	self assert: self algerInstance breadcrumbs submorphs size equals: size + 1.
	Algernon close.