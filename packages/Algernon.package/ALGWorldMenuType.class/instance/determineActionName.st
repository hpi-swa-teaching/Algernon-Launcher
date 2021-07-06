actions
determineActionName
	
	| firstWordOfSelector |
	self typeObject hasEntries ifTrue: [ ^ 'entries' ].
	firstWordOfSelector := self typeObject firstWordOfSelector.
	(self class actionNameSelectors includes: firstWordOfSelector)
		ifTrue: [ ^ firstWordOfSelector ].
	self class menuActionMapping 
		at: self typeObject category
		ifPresent: [ :name | ^ name ].

	^ 'open'
	