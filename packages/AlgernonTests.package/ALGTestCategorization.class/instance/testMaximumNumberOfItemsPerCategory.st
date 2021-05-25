testing categories size
testMaximumNumberOfItemsPerCategory

	self assert: 5 equals: ALGCore maximumPerCategory
		description: 'default value for maximumPerCategory'.
	
	ALGCore maximumPerCategory: 0.
	self assert: 1 equals: ALGCore maximumPerCategory
		description: 'lower bound for maximumPerCategory'.
	
	ALGCore maximumPerCategory: 101.
	self assert: 100 equals: ALGCore maximumPerCategory
		description: 'higher bound for maximumPerCategory'.
		
	ALGCore maximumPerCategory: 5.
	self assert: 5 equals: ALGCore maximumPerCategory
		description: 'value within bounds for maximumPerCategory'