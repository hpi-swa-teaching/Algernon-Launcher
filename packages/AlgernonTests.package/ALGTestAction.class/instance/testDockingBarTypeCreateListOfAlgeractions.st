testing
testDockingBarTypeCreateListOfAlgeractions
	|entries|
	
	entries := ALGDockingBarType allEntries.
	entries do: [ :each |
		self assert: (ALGDockingBarType
				with: each) createListOfAlgeractions notEmpty]