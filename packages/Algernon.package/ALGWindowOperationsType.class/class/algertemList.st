algertem lists
algertemList
	
	^ self allWindowActions
		collect: [ :each | ALGItem withAlgertype: (self with: each) ]