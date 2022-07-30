failures
expectedFailures

	(Smalltalk classNamed:	#SquitBrowser) ifNil:
		[^ OrderedCollection new
				addAll: (self class methodsInCategory: 'testing git project type' asSymbol);
				addAll: (self class methodsInCategory: 'testing git branch type' asSymbol);
				yourself].
	
	^ {}