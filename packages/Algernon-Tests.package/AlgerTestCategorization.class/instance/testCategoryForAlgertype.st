testing
testCategoryForAlgertype

	self assert: (categories size > 0).
	self assert: ((categories select: [ :each |
		each title = CategoryAlgertype new typeName ]) size > 0).
	 ^ nil