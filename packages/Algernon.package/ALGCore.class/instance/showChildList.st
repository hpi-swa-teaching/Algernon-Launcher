lists
showChildList
	itemList ifNotNil: [ | currentItem currentType |
		currentItem := itemList selectedListItem.
		self currentAlgertem: currentItem. "is this really necessary?"
		currentType := currentItem algertype.
		currentType hasChildren ifTrue: [ | actionItems |
			self searchStack push: (self textField contents asString).
			algertems := currentType algertemChildrenList.
			actionItems := ALGItem createListFrom: currentItem algeractions.
			algertems addAll: actionItems.
			self itemsCache clearItemsCache. "TODO fix caching to work with children"
			self clearTextField.
			self updateItemList ]].