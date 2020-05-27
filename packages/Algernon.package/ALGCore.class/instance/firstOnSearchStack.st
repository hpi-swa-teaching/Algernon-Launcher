accessing
firstOnSearchStack
	^ self searchStack linkedList
		ifEmpty: [self query]
		ifNotEmpty: [self searchStack linkedList last element]