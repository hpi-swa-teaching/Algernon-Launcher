helpers
denyLoadedHistorianEqualsBranchNamed: aString

	self deny: self mockWorkingCopy loadedHistorian equals: (self getHistorianNamed: aString)
