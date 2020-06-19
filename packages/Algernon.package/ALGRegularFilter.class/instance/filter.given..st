filtering
filter: anItemCollection given: aStringCollection
	| resultItems keyword itemsMatchingComment |
	keyword := aStringCollection first.
	keyword = '' ifTrue: [ ^ anItemCollection ].
	resultItems := super filter: anItemCollection given: aStringCollection.
	itemsMatchingComment := self filter: anItemCollection classesByCommentContaining: keyword.
	itemsMatchingComment do: [ :each | resultItems addIfNotPresent: each ].
	resultItems do: [ :each | each defaultIndex: 1 ].
	^ resultItems