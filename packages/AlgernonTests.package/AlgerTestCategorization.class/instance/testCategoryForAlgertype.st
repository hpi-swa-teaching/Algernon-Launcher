testing
testCategoryForAlgertype

	self assert: (categories size > 0).
	self assert: ((categories select: [ :each |
		each title = ALGCategoryType new typeName ]) size > 0)