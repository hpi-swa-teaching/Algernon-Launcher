testing
testScore0
	"Make sure normal input works"
	self runQuery: 'Algernon'.
	self assert: (self resultsClassIncludeName: 'Algernon').