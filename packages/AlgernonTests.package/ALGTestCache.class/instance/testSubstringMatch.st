testing
testSubstringMatch
	| cache cacheKey items |
	cache := ALGCache new.
	cacheKey := 'testKey'.
	items := { ALGItem new . ALGItem new }.
	cache putItems: items at: cacheKey.
	self deny: (cache getLargestSubstringMatch: cacheKey, '123' ifMiss: #()) isEmpty.