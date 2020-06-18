testing
testScoreNotMatching
	self assert: (SmallInteger maxVal) equals: (ALGFuzzyScoreAlgorithm scoreBetween: '123' and: '12476')