updating
showChildList

	| currentType |
	currentType := self currentItem algertype.
	currentType hasChildren ifFalse: [ ^ self ].
	self breadcrumbs push: self currentItem.
	self searchStack push: self textField currentContent.
	self itemProvider
		searchLevel: self searchStack size;
		parentItem: self currentItem.
	self textField clear.
	self updateItemList