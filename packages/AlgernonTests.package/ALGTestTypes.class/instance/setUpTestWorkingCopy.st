helpers
setUpTestWorkingCopy

	| workingCopy |
	workingCopy := SquotWorkingCopy newOnObjectMemory.
	workingCopy name: 'Test Working Copy'.
	workingCopy repository: (SquitRepository new initializeInDirectory: FileSystem memory root).
	workingCopy repository unitOfWork activateDuring:
		[workingCopy loadedHistorian: (workingCopy repository historianNamed: 'master')].
	workingCopy register.
	self testWorkingCopy: workingCopy.