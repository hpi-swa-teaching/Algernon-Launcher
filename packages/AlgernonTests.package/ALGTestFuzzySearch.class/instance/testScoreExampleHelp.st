testing search edge cases
testScoreExampleHelp
	
	self assert: ((ALGFuzzyMatcher scoreBetween: 'browse' and: 'help browse') = 5)