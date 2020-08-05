testing
testCacheKeyGenerationLevel0
	| parent |
	parent := ALGItem new.
	self cache finalResultsAt: (self cache keyFor: '1' level: 0 parent: nil) put: self items.
	self cache finalResultsAt: (self cache keyFor: '1' level: 0 parent: parent) put: self items.
	self assert: 2 equals: self cache finalResults size