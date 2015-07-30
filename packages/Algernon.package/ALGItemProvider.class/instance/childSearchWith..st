filtering
childSearchWith: aCollection

	| items itemName childSearch childItems |
	itemName := aCollection first.
	childSearch := aCollection second.
	childItems := OrderedCollection new.
	items := self items select: [:each | each isRelevantGiven: itemName].
	items := sorter sort: items given: itemName.
	childItems := self createChildResultsFor: (items first:
		{aCollection size. self class maxChildrenToSearch} min).
	items := childItems select: [ :each | each isRelevantGiven: childSearch ].
	^ sorter sort: items given: childSearch