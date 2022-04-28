testing
testWindowTypeCreateListOfAlgeractions
	|windows|
	
	windows := ALGWindowType visibleWindows.
	windows do: [ :each |
		self assert: (ALGWindowType
				with: each) createListOfAlgeractions notEmpty]