algertem lists
algertemList
	^ self allEntries
		collect: [ :each | ALGDockingBarItem withAlgertype: (self with: each) ]
	
