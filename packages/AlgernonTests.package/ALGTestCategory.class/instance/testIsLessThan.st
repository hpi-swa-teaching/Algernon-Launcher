testing
testIsLessThan
	
	| categoryA categoryB |
	categoryA := ALGCategory new rank: 5.
	categoryB := ALGCategory new rank: 42.
	self assert: (categoryA isLessThan: categoryB)