testing top results
testTopCategoryUniqueness
	self runQuery: 'ALG'.
	self
		deny: ((self items first: ALGTopCategorizer maxNumTopResults)
				includesAnyOf: (self items allButFirst: ALGTopCategorizer maxNumTopResults))