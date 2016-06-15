testing
testCacheKeyGenerationLevel1

	| cache items parent |
	cache := ALGCache new.
	items := { ALGItem new . ALGItem new }.
	parent := ALGItem new.
	self should: [ cache putItems: items at: (cache keyFor: '1' level: 1 parent: nil) ]
		raise: AssertionFailure.