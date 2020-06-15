initialization
initializeItemLayoutIcon
	| iconMorph |
	self hasIcon
		ifTrue: [iconMorph := self icon asMorph.
			self
				addMorph: iconMorph
				fullFrame: (self layoutFrameFor: #IconMorph)]