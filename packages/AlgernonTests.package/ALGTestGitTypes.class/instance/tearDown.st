helpers
tearDown

	(Smalltalk classNamed: #SquitBrowser) ifNotNil:
		[self tearDownTestWorkingCopy].
	
	ALGSquitBrowser := nil.
	ALGRemoteBranch := nil.
	ALGItemProvider resetItems.
	
	super tearDown