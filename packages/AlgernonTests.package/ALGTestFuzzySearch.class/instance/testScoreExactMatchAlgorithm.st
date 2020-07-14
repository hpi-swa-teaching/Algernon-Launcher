testing
testScoreExactMatchAlgorithm
	self assert: 0 equals: (ALGFuzzyMatcher scoreBetween: 'ALGTestFuzzySearch' and: 'ALGTestFuzzySearch')