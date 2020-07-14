testing
testSingleKeyMissing
	"Make sure normal input works"
	self runQuery: 'LGCore'.
	self assert: (self resultsClassIncludeName: 'ALGCore').