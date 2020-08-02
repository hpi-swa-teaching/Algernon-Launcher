filtering
filter: anItemCollection given: aStringCollection 
	| resultItems keyword |
	keyword := aStringCollection first.
	keyword = '' ifTrue: [^ self filterEmptyQuery: anItemCollection].
	resultItems := super filter: anItemCollection given: aStringCollection.
	self
		addItemsFrom: (self filter: anItemCollection classesByCommentContaining: keyword)
		to: resultItems.
	resultItems do: [:each | each resetDefaultIndex ].
	^ resultItems