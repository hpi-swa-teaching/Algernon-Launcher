testing
testEditDistance1Insert
	"Make sure normal input works"
	self runQuery: 'Algrnon'.
	self assert: (self resultsClassIncludeName: 'Algernon').