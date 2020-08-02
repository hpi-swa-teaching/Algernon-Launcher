algertem lists
algertemList
	^ TheWorldMenu registry
		collect: [:each | ALGItem withAlgertype: (self with: each) ]