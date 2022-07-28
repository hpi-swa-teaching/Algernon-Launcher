testing git branch type
testGitLocalBranchTypeSwitch

	self denyLoadedHistorianEqualsBranchNamed: 'test-branch'.
	
	self
		runQuery: 'switch test-branch (Test Working Copy)';
		activateCurrentItemAction;
		assertLoadedHistorianEqualsBranchNamed: 'test-branch'