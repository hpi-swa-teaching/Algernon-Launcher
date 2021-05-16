as yet unclassified
algertemList
	^ self menuEntries
		collect: [:each | ALGItem withAlgertype: (self with: each) ]
	
