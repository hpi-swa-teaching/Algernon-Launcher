testing
testAddItem
	| category itemA itemB |
	category := ALGCategory newWithTitle: 'testTitle'.
	itemA := ALGFakeItem new rank: 5; yourself.
	itemB := ALGFakeItem new rank: 42; yourself.
	self assert: 0 equals: category rank.
	category add: itemA.
	self assert: 5 equals: category rank.
	category add: itemB.
	self assert: 42 + 5 equals: category rank