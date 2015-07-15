lists
updateItemListWith: aString
	"Refreshes the visible search results."
	| items categories |
	self hideItemList.
	items := self relevantAlgertemsFor: aString.
	(items isEmptyOrNil)
		ifTrue: [ ^self ].
	categories := self categorize: items.
	self itemList: (ALGResultList newFrom: categories in: self).
	self itemList render.
	self itemList ifNotNil: [self currentAlgertem: (self itemList selectedListItem)].