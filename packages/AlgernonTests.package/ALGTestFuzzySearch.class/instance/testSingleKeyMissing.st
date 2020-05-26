testing
testSingleKeyMissing
	"Make sure normal input works"
	self runQuery: 'lgernon'.
	
	self assert: (self resultsClassIncludeName: 'Algernon').

	self runQuery: 'Algernon'.
	self assert: (self resultsClassIncludeName: 'Algernon').