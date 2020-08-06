testing algernon instance
testBreadcrumbsListSize
	| size |
	self runQuery: 'test'.
	self algInstance selectNext.
	size := self algInstance breadcrumbCount.
	[self algInstance currentItem hasChildren] whileFalse:  [self algInstance selectNext].
	self algInstance showChildList.
	self assert: self algInstance breadcrumbCount equals: size + 1.
