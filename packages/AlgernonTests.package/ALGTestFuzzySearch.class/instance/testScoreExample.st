testing
testScoreExample
	"Make sure help input works"
	self assert: ((self editDistanceAlgorithm scoreBetween: 'help browse' and: 'browse') = 5)