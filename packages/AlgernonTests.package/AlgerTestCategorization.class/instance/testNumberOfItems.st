testing
testNumberOfItems
	| totalNum |
	totalNum := 0.
	categories do: [ :anAlgercat |
		| numPerCat |
		numPerCat := anAlgercat items size.
		totalNum := totalNum + numPerCat.
		(anAlgercat title = ALGCategory titleTopResults)
			ifTrue: [ self assert: (numPerCat <= ALGTopCategorizer maxNumTopResults) ].
		self assert: (numPerCat <= ALGTypeCategorizer maxItemsPerCategory) ].
	self assert: (totalNum <= ALGTypeCategorizer maxNumItems)