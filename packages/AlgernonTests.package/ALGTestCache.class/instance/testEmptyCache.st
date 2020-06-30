testing
testEmptyCache
	self assert: (self cache at: 'keyThatIsNotPresent') isEmpty