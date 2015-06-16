lists
selectNext

	self active ifTrue: [
		itemList ifNotNil:[itemList selectNext. self currentAlgertem: (itemList selectedAlgernonListItem).]].