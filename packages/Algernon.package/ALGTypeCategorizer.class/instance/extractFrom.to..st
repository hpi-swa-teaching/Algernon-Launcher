categorizing
extractFrom: aDictionary to: aCollection 
	aDictionary
		keysAndValuesDo: [:key :items | aCollection add: ((ALGCategory newWithTitle: key)
					addAll: (items take: self class maxItemsPerCategory);
					 yourself)]