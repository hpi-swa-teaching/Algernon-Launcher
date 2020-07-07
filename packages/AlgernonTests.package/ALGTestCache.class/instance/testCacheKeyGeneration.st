testing
testCacheKeyGeneration

	| parent |
	parent := ALGItem new.
	self cache finalResultsAt: (self cache keyFor: '1' level: 1 parent: parent) put: self items.
	self cache finalResultsAt: (self cache keyFor: '1' level: 0 parent: nil) put: self items.
	self cache finalResultsAt: (self cache keyFor: '2' level: 0 parent: nil) put: self items.
	self cache finalResultsAt: (self cache keyFor: '2' level: 1 parent: parent) put: self items.
	self assert: 5 equals: self cache finalResults size