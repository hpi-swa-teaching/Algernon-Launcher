algertem lists
algertemList
	^ self allEntries
		collect: [ :each | ALGWorldMenuItem withAlgertype: (self with: each) ]
	
