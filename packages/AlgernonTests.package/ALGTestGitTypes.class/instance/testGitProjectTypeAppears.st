testing git project type
testGitProjectTypeAppears

	self runQuery: 'Test Working Copy'.
	self deny: (self getResultItemForType: 'Git Project') isNil