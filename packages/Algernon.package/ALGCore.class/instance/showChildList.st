updating
showChildList

	self itemList ifNotNil: [ | currentItem currentType |
		currentItem := self itemList selectedListItem.
		currentType := currentItem algertype.
		currentType hasChildren ifTrue: [ | actionItems |
			self breadcrumbs push: currentItem.
			self searchStack push: (self textField contents asString).
			self itemProvider items: currentType algertemChildrenList.
			actionItems := ALGActionItem createListFrom: currentItem.
			self itemProvider items addAll: actionItems.
			self itemProvider cache clear. "TODO fix caching to work with children"
			self textField clear.
			self updateItemList ]]