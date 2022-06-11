helpers
expectedFailures

	(Smalltalk classNamed:	#SquitBrowser) ifNil:
		[^ ALGTestGitProjectType methodsInCategory: #testing].
	
	^ {}