testing
testTopCategory
	| category topCategory |
	category := ALGCategory new rank: 5.
	topCategory := ALGCategory newForTopResults.
	self assert: (topCategory isKindOf: ALGCategory).
	self assert: (category isLessThan: topCategory)