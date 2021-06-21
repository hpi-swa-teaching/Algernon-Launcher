preferences
executeOnTab
	<preference: 'Execute results on tab'
		category: #Algernon
		description: 'Execute results on tab whenever they have no sub-results'
		type: #Boolean>
		
	^ ExecuteOnTab ifNil: [false]