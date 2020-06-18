testing
testScoreEmptyPattern
	self assert: 0 equals: (algorithm scoreBetween: '' and: '123456789')