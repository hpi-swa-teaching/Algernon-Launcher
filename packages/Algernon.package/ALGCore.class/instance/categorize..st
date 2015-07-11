lists
categorize: anItemList
	| categories |
	categories := OrderedCollection new.
	((self searchStack size > 0) and: (self textField contents asString size = 0))
		ifFalse: [ categories addAll: (self topCategorizer categorize: anItemList) ].
	categories addAll: (self typeCategorizer categorize: anItemList).
	^ categories