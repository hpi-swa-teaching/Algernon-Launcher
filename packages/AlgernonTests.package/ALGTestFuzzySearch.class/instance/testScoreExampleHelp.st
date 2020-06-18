testing
testScoreExampleHelp
	"Make sure help input works"
	self assert: ((ALGFuzzyScoreAlgorithm scoreBetween: 'browse' and: 'help browse') = 0)