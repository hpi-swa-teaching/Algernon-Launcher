visibility
hideItemList

	self itemList ifNotNil: [self itemList hide; delete.
						   self itemList: nil ]