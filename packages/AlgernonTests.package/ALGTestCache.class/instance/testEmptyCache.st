testing
testEmptyCache

	| cache |
	cache := ALGCache new.
	self assert: 0 equals: (cache getAt: 'testKey') size