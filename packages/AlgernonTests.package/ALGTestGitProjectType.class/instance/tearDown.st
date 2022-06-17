helpers
tearDown

	(Smalltalk classNamed: #SquitBrowser) ifNotNil:
		[self tearDownTestWorkingCopy].
	
	super tearDown