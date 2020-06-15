helpers
resultsIncludeName: aNameString 
	^ self algerInstance itemList items
		anySatisfy: [:entries | entries item name = aNameString]