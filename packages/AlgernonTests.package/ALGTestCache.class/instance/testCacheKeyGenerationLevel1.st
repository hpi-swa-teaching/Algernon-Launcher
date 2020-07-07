testing
testCacheKeyGenerationLevel1

	| parent |
	parent := ALGItem new.
	self should: [ self cache at: (self cache keyFor: '1' level: 1 parent: nil) put: self items  ]
		raise: AssertionFailure.