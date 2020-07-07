testing
testGetAt
	self assert: self items equals: (self cache finalResultsAt: self cacheKey).
	self assert: self items equals: (self cache allMatchedItemsAt: self cacheKey).