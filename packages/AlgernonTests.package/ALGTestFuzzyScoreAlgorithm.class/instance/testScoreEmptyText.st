testing
testScoreEmptyText
	self assert: nil equals: (ALGFuzzyScoreAlgorithm scoreBetween: '123' and: '')