testing
testScoreEmptyText
	self assert: (SmallInteger maxVal) equals: (ALGFuzzyScoreAlgorithm scoreBetween: '123' and: '')