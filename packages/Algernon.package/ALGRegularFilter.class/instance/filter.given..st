filtering
filter: anItemCollection given: aStringCollection

	| items keyword itemsMatchingComment|
	self flag: #TODO. "Severe redundancies with ALGActionVerbFilter"
	keyword := aStringCollection first.
	items := anItemCollection select: [ :each | each isRelevantGiven: keyword ].
	itemsMatchingComment := self filter: anItemCollection classesByCommentContaining: keyword.
	itemsMatchingComment do: [ :each | items addIfNotPresent: each ].
	self flag: #TODO. "This is ugly, we should have fuzzy search results and non fuzzy ones. We need to set this, otherwise scoring is messed up."
	items do: [ :item | item fuzzyRank: 0 ].
	items size < self minimumItemsToCompute 
		ifTrue: [items addAll: (self computeFuzzyItems: (self minimumItemsToCompute) - (items size) outOf: (anItemCollection copyWithoutAll: items) given: aStringCollection)].
	
	items do: [ :each | each defaultIndex: 1 ].
	^ items