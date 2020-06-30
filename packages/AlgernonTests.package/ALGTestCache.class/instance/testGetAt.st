testing
testGetAt
	self assert: self items equals: (self cache at: self cacheKey)