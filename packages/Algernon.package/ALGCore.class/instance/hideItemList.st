lists
hideItemList
	itemList ifNotNil:[
		itemList hide.
		itemList delete.
		itemList := nil.].