helpers
tearDown

	(Smalltalk classNamed: #SquitBrowser) ifNotNil:
		[self
			tearDownTestWorkingCopy;
			restoreGitStamp].
	
	ALGSquitBrowser := nil.
	ALGRemoteBranch := nil.
	ALGItemProvider resetItems.
	
	super tearDown