testing
testEmptyCache
	self assert: (self cache get: 'keyThatIsNotPresent') isEmpty