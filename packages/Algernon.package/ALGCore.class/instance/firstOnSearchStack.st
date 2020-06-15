accessing
firstOnSearchStack
	^ self searchStack linkedList
		ifEmpty: ['']
		ifNotEmpty: [self searchStack linkedList last element]