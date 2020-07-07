testing
testScore2
	"Make sure normal input works"
	self runQuery: 'ACore'.
	
	self assert: (self resultsClassIncludeName: 'ALGCore').