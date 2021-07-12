actions
determineActionName
	
	self typeObject hasEntries ifTrue: [ ^ 'entries' ].
	self class actionNameSelectors collect: [ :selectorString | 
		(self typeObject selector startsWith: selectorString)
			ifTrue: [ ^ selectorString ]
	].
	self class menuActionMapping 
		at: self typeObject category
		ifPresent: [ :name | ^ name ].

	^ 'open'
	