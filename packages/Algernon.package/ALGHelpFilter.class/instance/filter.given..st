filtering
filter: anItemCollection given: aStringCollection 
	| allHelpItems |
	allHelpItems := anItemCollection
				select: [:each | each algerType typeName = 'Help'].
	aStringCollection size = 1 ifTrue: [^ allHelpItems
				do: [:each | each fuzzyRank: 0]].
	^ self computeFuzzyItemsOutOf: allHelpItems given: aStringCollection allButFirst