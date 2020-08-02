testing queries
testExactMatch
	
	self runQuery: 'Algernon'.
	self assert: (self resultsClassIncludeName: 'Algernon').