categorizing
extractFrom: aDictionary to: aCollection 
	aDictionary
		keysAndValuesDo: [:key :items | aCollection add: ((ALGCategory newWithTitle: key)
					addAll: (items first: ((self maxItemsPerCategoryFor: (items first algerType)) min: items size));
					 yourself)]