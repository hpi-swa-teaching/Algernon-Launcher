testing
testEmptyCache

	| cache |
	cache := ALGCache new.
	self assert: (cache getAt: 'testKey') isEmpty