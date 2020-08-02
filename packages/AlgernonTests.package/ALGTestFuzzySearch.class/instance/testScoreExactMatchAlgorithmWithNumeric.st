testing scores
testScoreExactMatchAlgorithmWithNumeric
	self assert: 0 equals: (ALGFuzzyMatcher scoreBetween: '123456789' and: '123456789')