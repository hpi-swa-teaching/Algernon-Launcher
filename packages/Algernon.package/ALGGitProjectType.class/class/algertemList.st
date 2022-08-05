algertem lists
algertemList

	(Smalltalk classNamed: #SquitBrowser) ifNil:
		[^ {}].
	
	^ SquotWorkingCopy registered
			collect: [ :each | ALGItem withAlgertype: (self with: each) ]