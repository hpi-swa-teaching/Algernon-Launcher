helpers
resultsIncludeName: aNameString 
	^ self items
		anySatisfy: [:entries | entries item name = aNameString]