helpers
resultsIncludeName: aNameString 
	^ self items
		anySatisfy: [:entries | entries name = aNameString]