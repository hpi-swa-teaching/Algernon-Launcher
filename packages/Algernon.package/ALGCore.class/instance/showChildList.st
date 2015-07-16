lists
showChildList
	itemList ifNotNil: [ | currentItem currentType |
		currentItem := itemList selectedListItem.
		self currentAlgertem: currentItem. "is this really necessary?"
		currentType := currentItem algertype.
		currentType hasChildren ifTrue: [ | actionItems |
			self breadcrumbs push: currentItem.
			self searchStack push: self textField contents asString.
			algertems := currentType algertemChildrenList.
			actionItems := ALGActionItem createListFrom: currentItem.
			algertems addAll: actionItems.
			self itemsCache clearItemsCache. "TODO fix caching to work with children"
			self clearTextField.
			self updateItemList ]].