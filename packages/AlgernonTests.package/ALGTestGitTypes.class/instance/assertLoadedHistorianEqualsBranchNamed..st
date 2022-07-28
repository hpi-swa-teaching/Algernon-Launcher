helpers
assertLoadedHistorianEqualsBranchNamed: aString

	self assert: self mockWorkingCopy loadedHistorian equals: (self getHistorianNamed: aString)
