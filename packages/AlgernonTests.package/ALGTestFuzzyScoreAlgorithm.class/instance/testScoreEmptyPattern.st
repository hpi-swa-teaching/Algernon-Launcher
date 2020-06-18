testing
testScoreEmptyPattern
	self assert: 0.9 equals: (ALGFuzzyScoreAlgorithm scoreBetween: '' and: '123456789')