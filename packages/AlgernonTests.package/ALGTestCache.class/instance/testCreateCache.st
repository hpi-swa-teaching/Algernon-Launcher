testing
testCreateCache
	
	| cache |
	cache := ALGCache new.
	self assert: cache itemsCache isEmpty