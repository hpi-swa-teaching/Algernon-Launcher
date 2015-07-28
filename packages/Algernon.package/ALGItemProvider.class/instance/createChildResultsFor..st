factory methods
createChildResultsFor: aCollection
	
	| childItems |
	childItems := OrderedCollection new.
	aCollection do: [ :item |
		childItems addAll: item algertype algertemChildrenList.
		childItems addAll: (ALGActionItem createListFrom: item) ].
	^ childItems