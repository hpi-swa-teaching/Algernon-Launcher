testing git branch type
testGitBranchTypeAppearsAsChildren

	self
		runQuery: 'Test Working Copy';
		moveCursorTo: 'Git Project'.
	self algInstance showChildList.
	
	self deny: (self getResultItemForType: 'Git Branch') isNil