testing
testGetAt
	self assert: self items equals: (self cache get: self cacheKey)