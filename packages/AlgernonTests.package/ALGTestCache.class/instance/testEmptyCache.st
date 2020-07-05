testing
testEmptyCache
	self assert: (self cache finalResultsAt: 'keyThatIsNotPresent') isEmpty.
	self assert: (self cache allMatchedItemsAt: 'keyThatIsNotPresent') isEmpty