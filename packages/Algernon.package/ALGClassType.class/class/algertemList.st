algertem lists
algertemList
	^ Smalltalk allClasses asOrderedCollection collect: [ :each |
		ALGItem withAlgertype: (self with: each) ]
