testing
testWebSearchQuery

	self runQuery: 'web Algernon'.
	self algInstance showChildList.
	self assert: self nameOfFirstResult equals: 'Algernon'