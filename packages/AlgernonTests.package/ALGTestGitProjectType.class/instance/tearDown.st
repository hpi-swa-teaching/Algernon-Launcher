helpers
tearDown

	(Smalltalk classNamed: #SquitBrowser) ifNotNil:
		[self tearDownTestWorkingCopy].
	
	ALGSquitBrowser := nil.
	ALGItemProvider resetItems.
	
	super tearDown