categorizing
extractFrom: aDictionary to: aCollection 
	aDictionary associationsDo: [:key :items | 
		aCollection add: (ALGCategory newWithTitle: key)
					, (items take: self class maxItemsPerCategory)]