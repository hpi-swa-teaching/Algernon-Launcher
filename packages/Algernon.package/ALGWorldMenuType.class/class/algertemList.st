as yet unclassified
algertemList
	^ self menuEntries
		collect: [:each | ALGItemFilter withAlgertype: (self with: each) ]
	
