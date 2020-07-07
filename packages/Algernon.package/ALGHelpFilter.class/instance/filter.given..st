filtering
filter: anItemCollection given: aStringCollection 
	| allHelpItems |
	allHelpItems := anItemCollection
				select: [:each | each algerType typeName = 'Help'].
	^ self
		computeFuzzyItems: self minimumItemsToCompute
		outOf: allHelpItems
		given: (aStringCollection size > 1
				ifTrue: [aStringCollection allButFirst]
				ifFalse: [aStringCollection])