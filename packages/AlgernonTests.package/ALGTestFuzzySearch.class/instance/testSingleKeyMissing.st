testing queries
testSingleKeyMissing

	self runQuery: 'lgernon'.
	self assert: (self resultsClassIncludeName: 'Algernon').
