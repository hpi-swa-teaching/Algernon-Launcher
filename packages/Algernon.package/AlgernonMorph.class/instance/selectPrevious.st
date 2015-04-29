lists
selectPrevious

	self active ifTrue: [
		(itemList isNil not) ifTrue:[itemList selectPrevious]].