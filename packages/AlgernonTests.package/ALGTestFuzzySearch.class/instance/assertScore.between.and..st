helpers
assertScore: score between: lower and: upper
	self assert: score equals: (ALGFuzzyMatcher scoreBetween: lower and: upper)