testing
testScoreEmptyPatternAlgorithm
	self assert: 0.9 equals: (ALGFuzzyMatcher scoreBetween: '' and: '123456789')