helpers
categoryResultItems
	^ (self algInstance itemList items select: [:each | each item isNil ])