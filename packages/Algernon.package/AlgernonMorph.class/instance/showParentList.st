lists
showParentList
	currentAlgertem ifNotNil:[
		algertems := self defaultAlgertems.			
		self clearTextField.
		self updateItemListWith:currentAlgertem name.
		self currentAlgertem: (self itemList selectedAlgernonListItem).].