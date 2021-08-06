algertem lists
algertemListWith: aNamedDockingBarEntry
			
	^ aNamedDockingBarEntry menuEntries
		collect: [ :each | ALGDockingBarItem withAlgertype: (self with: each)]