testing git branch type
testGitRemoteBranchTypeSwitch

	ALGRemoteBranch := ALGFakeBranch new
									shortName: 'test-remote';
									yourself.
	ALGItemProvider resetItems.
	
	self assertQuery: 'switch test-remote (Test Working Copy)' sendsMessageToSquitBrowser: #actionBranchCreateAndSwitch