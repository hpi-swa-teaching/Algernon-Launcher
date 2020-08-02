testing queries
testScoreLetterMissing
	
	self runQuery: 'Algrnon'.
	self assert: (self resultsClassIncludeName: 'Algernon').