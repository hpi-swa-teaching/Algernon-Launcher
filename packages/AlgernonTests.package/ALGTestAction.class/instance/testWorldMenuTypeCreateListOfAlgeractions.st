testing
testWorldMenuTypeCreateListOfAlgeractions
	|entries|
	
	entries := ALGWorldMenuType allEntries.
	entries do: [ :each |
		self assert: (ALGWorldMenuType
				with: each) createListOfAlgeractions notEmpty]