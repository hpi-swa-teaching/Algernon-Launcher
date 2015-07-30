initialization
initializeIcons

	(self isTitle) ifTrue: [ ^ self ].
	self icon: (ALGIconFactory getInstance iconFor: self item)