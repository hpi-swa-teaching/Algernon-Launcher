lists
showChildList
	itemList ifNotNil: [ | currentItem currentType |
		currentItem := itemList selectedListItem.
		currentType := currentItem algertype.
		currentType hasChildren ifTrue: [ | actionItems |
			self breadcrumbs push: currentItem.
			self searchStack push: (self textField contents asString).
			self itemProvider items: currentType algertemChildrenList.
			actionItems := ALGActionItem createListFrom: currentItem.
			self itemProvider items addAll: actionItems.
			self itemProvider cache clearItemsCache. "TODO fix caching to work with children"
			self clearTextField.
			self updateItemList ]].