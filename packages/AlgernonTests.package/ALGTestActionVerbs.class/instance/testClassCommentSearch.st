testing
testClassCommentSearch
	self runQuery: 'which Quicksilver'.
	self assert: (self resultsIncludeName: 'ALGCore').