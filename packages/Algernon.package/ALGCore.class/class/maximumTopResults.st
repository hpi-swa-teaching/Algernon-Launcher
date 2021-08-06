preferences
maximumTopResults
	<preference: 'Maximum number of top results'
		category: #Algernon
		description: 'Maximum number of top results that are shown'
		type: #Number>
	
	MaxTopResults ifNil:  [ MaxTopResults := 5 ].
	MaxTopResults := MaxTopResults clampLow: 0 high: 15.
	^ MaxTopResults