helpers
resultsClassIncludeName: t1 
	^ self algerInstance itemList items
		anySatisfy: [:t2 | t2 item algerType typeName = 'Class'
				and: [t2 item name = t1]]