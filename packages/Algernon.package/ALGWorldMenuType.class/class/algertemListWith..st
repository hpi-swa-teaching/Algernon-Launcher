algertem lists
algertemListWith: aNamedWorldMenuEntry
			
	^ aNamedWorldMenuEntry menuEntries
		collect: [ :each | ALGWorldMenuItem withAlgertype: (self with: each)]