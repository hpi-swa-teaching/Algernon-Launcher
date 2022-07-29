helpers
setUp
	
	(Smalltalk classNamed: #SquitBrowser) ifNotNil:
		[self
			setUpGitStamp;
			setUpTestWorkingCopy;
			setUpTestBranches].
	super setUp.
	ALGItemProvider resetItems