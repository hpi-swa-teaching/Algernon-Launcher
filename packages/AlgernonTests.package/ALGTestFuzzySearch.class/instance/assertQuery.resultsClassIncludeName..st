helpers
assertQuery: query resultsClassIncludeName: name
	self runQuery: query.
	self assert: (self resultsClassIncludeName: name).