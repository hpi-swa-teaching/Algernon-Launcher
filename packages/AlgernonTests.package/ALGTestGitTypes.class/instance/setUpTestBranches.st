helpers
setUpTestBranches

	| workingCopy newHistorian |
	
	workingCopy := self mockWorkingCopy.
	workingCopy newVersionMessage: 'Test Commit'.
	workingCopy newSaveOperation applyToWorkingCopy.
	
	newHistorian := SquitBrowser new newHistorianFor: workingCopy repository named: 'test-branch' onError: [].
	newHistorian version: workingCopy loadedHistorian version