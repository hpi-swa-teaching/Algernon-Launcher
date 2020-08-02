helpers
items
	^ (self itemMorphs
		reject: [:each | each item isNil ])
		collect: [:each | each item ]