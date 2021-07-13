actions
determineActionName
	
	self typeObject hasEntries ifTrue: [ ^ 'entries' ].
	self class actionNameSelectors
		detect: [ :selectorString | self typeObject selector startsWith: selectorString]
		ifFound: [ :element | ^ element ].
	self class menuActionMapping 
		at: self typeObject category
		ifPresent: [ :name | ^ name ].

	^ 'open'
	