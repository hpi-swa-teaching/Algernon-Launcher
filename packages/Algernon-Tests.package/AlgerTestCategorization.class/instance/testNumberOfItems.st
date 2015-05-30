testing
testNumberOfItems
	| totalNum |
	totalNum := 0.
	categories do: [ :anAlgercat |
		| numPerCat |
		numPerCat := anAlgercat algertems size.
		totalNum := totalNum + numPerCat.
		(anAlgercat title = Algercat topResults)
			ifTrue: [ self assert: (numPerCat <= categorizer class maxNumTopResults) ].
		self assert: (numPerCat <= categorizer class maxItemsPerCategory) ].
	self assert: (totalNum <= categorizer class maxNumItems).
	 ^ nil