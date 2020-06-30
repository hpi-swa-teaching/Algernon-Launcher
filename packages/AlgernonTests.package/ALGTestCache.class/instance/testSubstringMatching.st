testing
testSubstringMatching
	self deny: (self cache getLargestSubstringMatch: self cacheKey,'103' ifMiss: #()) isEmpty.