testing queries
testScoreCaseInsensitive
	
	self runQuery: 'aLGERNON'.
	self assert: (self resultsClassIncludeName: 'Algernon').