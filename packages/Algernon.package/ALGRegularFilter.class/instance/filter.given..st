filtering
filter: anItemCollection given: aStringCollection

	| items keyword itemsMatchingComment |
	keyword := aStringCollection first.
	items := anItemCollection select: [ :each | each isRelevantGiven: keyword ].
	itemsMatchingComment := self filter: anItemCollection classesByCommentContaining: keyword.
	itemsMatchingComment do: [ :each | items addIfNotPresent: each ].
	items do: [ :each | each defaultIndex: 1 ].
	^ items