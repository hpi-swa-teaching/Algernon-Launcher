lists
updateItemListWith: aString
	"Refreshes the visible search results."
	| algertemList categorizedList |
	self hideItemList.
	algertemList := (self relevantAlgertemsFor: aString).
	(algertemList isEmptyOrNil)
		ifTrue: [ ^self ].

	categorizedList := self categorizer categorize: algertemList.
	self itemList: (ALGItemList newFrom: categorizedList in: self).
	self itemList render.
	self itemList ifNotNil: [self currentAlgertem: (self itemList selectedAlgernonListItem)].