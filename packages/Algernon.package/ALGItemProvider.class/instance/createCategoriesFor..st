factory methods
createCategoriesFor: anItemList 

	| categories |
	
	categories := OrderedCollection new.
	(self yieldTop and: [self parrentItemYieldTop])
		ifTrue: [categories
				addAll: (self topCategorizer categorize: anItemList withExistingCategories: categories)].
	categories
		addAll: (self typeCategorizer categorize: anItemList withExistingCategories: categories).
		
	^ categories