helpers
items
	^ (self algerInstance itemList items
		reject: [:each | each item isNil ])
		collect: [:each | each item ]