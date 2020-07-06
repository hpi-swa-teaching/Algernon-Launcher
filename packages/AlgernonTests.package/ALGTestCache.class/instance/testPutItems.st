testing
testPutItems
	self assert: 1 equals: cache allMatchedItems size.
	self assert: 1 equals: cache finalResults size.
