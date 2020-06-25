testing
testScoreExampleHelp
	"Make sure help input works"
	self assert: ((ALGFuzzyMatcher scoreBetween: 'browse' and: 'help browse') = 5)