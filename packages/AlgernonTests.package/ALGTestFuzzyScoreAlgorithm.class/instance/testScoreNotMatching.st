testing
testScoreNotMatching
	self assert: nil equals: (ALGFuzzyScoreAlgorithm scoreBetween: '123' and: '12476')