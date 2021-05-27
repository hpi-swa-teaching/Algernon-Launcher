algertem lists
algertemList
	^ self menuEntries
		collect: [ :each | ALGItem withAlgertype: (self with: each) ]
	
