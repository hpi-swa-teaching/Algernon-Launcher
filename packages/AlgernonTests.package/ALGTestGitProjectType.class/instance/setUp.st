helpers
setUp
	
	(Smalltalk classNamed: #SquitBrowser) ifNotNil:
		[self setUpTestWorkingCopy].
	
	super setUp.
	
	ALGItemProvider resetItems