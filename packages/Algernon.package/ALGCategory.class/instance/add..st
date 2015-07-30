adding
add: anItem

	self items add: anItem.
	self rank: (self rank + anItem rank)

	