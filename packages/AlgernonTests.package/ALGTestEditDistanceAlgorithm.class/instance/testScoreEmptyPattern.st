testing
testScoreEmptyPattern
	self assert: 0 equals: (ALGFuzzyScoreAlgorithm scoreBetween: '' and: '123456789')