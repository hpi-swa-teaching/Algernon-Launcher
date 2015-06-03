lists
selectPrevious

	self active ifTrue: [
		(itemList isNil not) ifTrue:[itemList selectPrevious. self currentAlgertem: (itemList selectedAlgernonListItem).]].