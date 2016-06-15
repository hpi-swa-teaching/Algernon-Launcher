testing
testClear

	| cache cacheKey items |
	cache := ALGCache new.
	cacheKey := 'testKey'.
	items := { ALGItem new . ALGItem new }.
	cache putItems: items at: cacheKey.
	self assert: cache itemsCache notEmpty.
	cache clear.
	self assert: cache itemsCache isEmpty