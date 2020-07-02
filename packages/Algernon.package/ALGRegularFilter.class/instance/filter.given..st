filtering
filter: anItemCollection given: aStringCollection
	| resultItems keyword itemsMatchingComment resultItemSet |
	keyword := aStringCollection first.
	keyword = '' ifTrue: [ ^ self filterEmptyQuery: anItemCollection ].
	resultItems := (super filter: anItemCollection given: aStringCollection).
	resultItemSet := resultItems asSet.
	itemsMatchingComment := self filter: anItemCollection classesByCommentContaining: keyword.
	itemsMatchingComment do: [ :each | (resultItemSet includes: each) ifFalse: [ resultItems add: each ] ].
	resultItems do: [ :each | each defaultIndex: 1 ].
	^ resultItems