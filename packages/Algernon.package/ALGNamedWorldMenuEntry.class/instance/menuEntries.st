accessing
menuEntries

	self name = 'Windows' ifTrue: [^ OrderedCollection new ].

	^ ((self menuSubmorphs
		collect: [:morph | ALGNamedWorldMenuEntry newFrom: morph])
		select: [ :entry | entry isValid])
		select: [:entry | entry isEnabled]