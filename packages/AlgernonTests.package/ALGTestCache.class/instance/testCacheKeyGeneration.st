testing
testCacheKeyGeneration

	| cache items parent |
	cache := ALGCache new.
	items := { ALGItem new . ALGItem new }.
	parent := ALGItem new.
	cache putItems: items at: (cache keyFor: '1' level: 1 parent: parent).
	cache putItems: items at: (cache keyFor: '1' level: 0 parent: nil).
	cache putItems: items at: (cache keyFor: '2' level: 0 parent: nil).
	cache putItems: items at: (cache keyFor: '2' level: 1 parent: parent).
	self assert: 4 equals: cache itemsCache size