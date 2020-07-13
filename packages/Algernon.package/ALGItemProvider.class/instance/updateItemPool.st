updating
updateItemPool

	| resultItems |
	self items: self defaultItems.
	self searchLevel = 0 ifTrue: [ ^ self ].
	resultItems := OrderedCollection new.
	resultItems addAll: self parentItem children.
	resultItems addAll: (ALGActionItem createListFrom: self parentItem).
	self items: resultItems