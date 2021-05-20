updating
updateItemPool

	| resultItems |
	self items: self defaultItems.
	self isDefaultSearchLevel ifTrue: [ ^ self ].
	resultItems := OrderedCollection new.
	resultItems addAll: self parentItem children.
	resultItems addAll: (ALGActionItem createListFrom: self parentItem).
	self items: resultItems