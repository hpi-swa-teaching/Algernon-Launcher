algertem lists
algertemList
	^ self menuEntries
		collect: [ :each | ALGWorldMenuItem withAlgertype: (self with: each) ]
	
