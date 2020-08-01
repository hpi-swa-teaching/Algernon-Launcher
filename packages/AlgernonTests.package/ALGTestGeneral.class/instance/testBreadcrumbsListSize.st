testing algernon instance
testBreadcrumbsListSize

	| size |
	
	self runQuery: 'test'.
	self algInstance selectNext.
	size := self algInstance breadcrumbs submorphs size.
	[self algInstance currentItem hasChildren] whileFalse:  [self algInstance selectNext].
	self algInstance showChildList.
	self assert: self algInstance breadcrumbs submorphs size equals: size + 1.
	Algernon close.