testing git branch type
testGitBranchTypeAppears

	self runQuery: 'Test Working Copy'.
	self deny: (self getResultItemForType: 'Git Branch') isNil