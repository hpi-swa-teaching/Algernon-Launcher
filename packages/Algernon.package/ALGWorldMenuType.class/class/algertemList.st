algertem lists
algertemList
	^ self entries
		collect: [ :each | ALGWorldMenuItem withAlgertype: (self with: each) ]
	
