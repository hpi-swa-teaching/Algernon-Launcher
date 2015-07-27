relevance
categorize: anItemList

	| categories |
	categories := OrderedCollection new.
	(self yieldTop)
		ifTrue: [ categories addAll: (self topCategorizer categorize: anItemList) ].
	categories addAll: (self typeCategorizer categorize: anItemList).
	^ categories