accessing
firstOnSearchStack
	^ self searchStack linkedList
		ifEmpty: [nil]
		ifNotEmpty: [self searchStack linkedList last element]