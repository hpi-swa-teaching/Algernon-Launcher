helpers
items
	^ (self algInstance itemList items
		reject: [:each | each item isNil ])
		collect: [:each | each item ]