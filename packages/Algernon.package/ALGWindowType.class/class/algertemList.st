algertem lists
algertemList
	^ self visibleWindows
		collect: [:each | ALGItem withAlgertype: (self with: each) ]
	