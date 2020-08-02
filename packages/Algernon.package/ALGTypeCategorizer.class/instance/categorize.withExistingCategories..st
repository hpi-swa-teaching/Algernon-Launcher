categorizing
categorize: anItemList withExistingCategories: aCategoriesCollection 
	|  topCategoryItems |
	topCategoryItems := aCategoriesCollection
				detect: [:cat | cat title = ALGCategory titleTopResults]
				ifFound: [:cat | cat items]
				ifNone: [#()].
	^ self
		categorizeItems: (anItemList copyWithoutAll: topCategoryItems)