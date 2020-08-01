testing queries
testScoreLettersMissing
	
	self runQuery: 'ACore'.	
	self assert: (self resultsClassIncludeName: 'ALGCore').