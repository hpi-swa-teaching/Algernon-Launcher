preferences
maximumPerCategory
	<preference: 'Maximum number of results per category'
		category: #Algernon
		description: 'Maximum number of results that are shown per category'
		type: #Number>
	
	MaxResultsPerCategory ifNil:  [ MaxResultsPerCategory := 5 ].
	MaxResultsPerCategory := MaxResultsPerCategory clampLow: 1 high: 100.
	^ MaxResultsPerCategory