lists
updateItemListWith: aString
	"Refreshes the visible search results."
	| algertemList categorizedList |
	self hideItemList.
	algertemList := (self relevantAlgertemsFor: aString).
	(algertemList size = 0)
		ifTrue: [ ^self ].
	
	categorizedList := self categorizer categorize: algertemList.
	self itemList: (ItemList newFrom: categorizedList in: self).
	self itemList render.
	self itemList ifNotNil: [self currentAlgertem: (self itemList selectedAlgernonListItem)].