factory methods
createChildResultsFor: aCollection
	
	| childItems |
	childItems := OrderedCollection new.
	aCollection do: [ :item |
		(item algerType hasChildren)
			ifTrue: [ childItems addAll: item algerType algertemChildrenList.
					childItems addAll: (ALGActionItem createListFrom: item) ] ].
	^ childItems