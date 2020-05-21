helpers
categoryResultItems
	^ (self algerInstance itemList items select: [:each | each item isNil ])