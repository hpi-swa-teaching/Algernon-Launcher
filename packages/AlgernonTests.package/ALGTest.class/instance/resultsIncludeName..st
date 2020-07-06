helpers
resultsIncludeName: aNameString 
	^ self algInstance itemList items
		anySatisfy: [:entries | entries item name = aNameString]