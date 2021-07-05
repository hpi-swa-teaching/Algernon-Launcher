accessing
menuEntries

	(self isDynamic and: [self name = 'Windows'])
		ifTrue: [^ OrderedCollection new ].
		
	^ self selectEnabled: self menuSubmorphs