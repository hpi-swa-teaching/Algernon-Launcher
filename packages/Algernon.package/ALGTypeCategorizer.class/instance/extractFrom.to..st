categorizing
extractFrom: aDictionary to: aCollection 
	aDictionary
		keysAndValuesDo: [:key :items | aCollection add: ((ALGCategory newWithTitle: key)
					addAll: (items first: (self class maxItemsPerCategory min: items size));
					 yourself)]