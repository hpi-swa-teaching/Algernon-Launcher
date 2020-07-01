factory methods
createCategoriesFor: anItemList 
	| categories |
	categories := OrderedCollection new.
	self yieldTop
		ifTrue: [categories
				addAll: (self topCategorizer categorize: anItemList)].
	categories
		addAll: (self typeCategorizer categorize: anItemList withExistingCategories: categories).
	self halt.
	^ categories