helpers
setUp
	
	(Smalltalk classNamed: #SquitBrowser) ifNotNil:
		[self
			setUpTestWorkingCopy;
			setUpTestBranches].
	
	super setUp.
	
	ALGItemProvider resetItems