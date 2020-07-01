categorizing
categorize: anItemList withExistingCategories: aCategoriesCollection 
	|  topCategoryItems |
	topCategoryItems := aCategoriesCollection
				detect: [:cat | cat title = ALGCategory titleTopResults]
				ifFound: [:cat | cat items]
				ifNone: [#()].
	^ self
		categorize: (anItemList copyWithoutAll: topCategoryItems)