lists
showChildList
	| anAlgertype|
	itemList ifNotNil:[
		anAlgertype := itemList selectedAlgernonListItem algertype.
		anAlgertype hasChildren ifTrue:[
			self currentAlgertem: itemList selectedAlgernonListItem.
			algertems := anAlgertype algertemChildrenList.
			self clearTextField.
			self updateItemList]].