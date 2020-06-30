testing
testCacheKeyGenerationLevel0

	| cache items parent |
	cache := ALGCache new.
	items := { ALGItem new . ALGItem new }.
	parent := ALGItem new.
	cache putItems: items at: (cache keyFor: '1' level: 0 parent: nil).
	cache putItems: items at: (cache keyFor: '1' level: 0 parent: parent).
	self assert: 1 equals: cache size