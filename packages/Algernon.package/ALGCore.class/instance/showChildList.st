updating
showChildList

	(self currentItem hasChildren) ifFalse: [ ^ self ].
	self breadcrumbs push: self currentItem.
	self searchStack push: self textField currentContent.
	self parentStack push: self currentItem.
	self itemProvider
		searchLevel: self searchStack size;
		parentItem: self currentItem.
	self textField clear.
	self updateItemList