actions
determineActionName
	
	self typeObject hasEntries ifTrue: [ ^ 'entries' ].
	self class actionNameSelectors
		detect: [ :selectorString | self typeObject selector beginsWith: selectorString]
		ifFound: [ :selectorString | ^ selectorString ].
	self class menuActionMapping 
		at: self typeObject category
		ifPresent: [ :name | ^ name ].

	^ 'open'
	
