testing
testCategoryForTopResults

	self assert: (categories size > 0).
	self assert: ((categories select: [ :each |
		each title = ALGCategory topResults ]) size > 0).
	 ^ nil