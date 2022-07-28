helpers
setUpTestWorkingCopy

	| workingCopy |
	
	workingCopy := SquotWorkingCopy newOnObjectMemory.
	workingCopy
		name: 'Test Working Copy';
		repository: (SquitRepository new initializeInDirectory: FileSystem memory root);
		register.
	workingCopy repository unitOfWork activateDuring:
		[workingCopy loadedHistorian: (workingCopy repository historianNamed: 'main')].
	
	self mockWorkingCopy: workingCopy