testing
testSubstringMatching
	| cache cacheKey items |
	cache := ALGCache new.
	cacheKey := 'testKey'.
	items := { ALGItem new . ALGItem new }.
	cache putItems: items at: cacheKey.
	self deny: (cache getLargestSubstringMatch: cacheKey,'103' ifMiss: #()) isEmpty.