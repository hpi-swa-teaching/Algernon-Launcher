as yet unclassified
algertemListWith: aNamedWorldMenuEntry
			
	^ aNamedWorldMenuEntry menuEntries
		collect: [ :each | ALGWorldMenuItem withAlgertype: (self with: each)]