testing git branch type
testGitBrachTypeGetGitBrowser
	
	| gitBranchType |
	
	gitBranchType := ALGGitBranchType algertemList first algerType.
	self assert: gitBranchType getGitBrowser branchSelection equals: gitBranchType typeObject shortName