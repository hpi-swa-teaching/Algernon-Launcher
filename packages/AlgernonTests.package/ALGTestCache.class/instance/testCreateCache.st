testing
testCreateCache
	| cache |
	cache := ALGCache new.
	self assert: cache allMatchedItems isEmpty.
	self assert: cache finalResults isEmpty.