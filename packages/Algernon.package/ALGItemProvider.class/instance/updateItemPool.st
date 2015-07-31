updating
updateItemPool

	| items |
	self items: self defaultItems.
	(self searchLevel = 0) ifTrue: [ ^ self ].
	items := OrderedCollection new.
	items addAll: self parentItem children.
	items addAll: (ALGActionItem createListFrom: self parentItem).
	self items: items