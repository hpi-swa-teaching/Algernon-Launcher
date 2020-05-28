initialization
initializeItemLayoutIcon
	| iconMorph |
	self hasIcon
		ifTrue: [iconMorph := self icon asMorph.
			self
				addMorph: iconMorph
				fullFrame: (LayoutFrame
						fractions: (0.01 @ 0.3 corner: 0.04 @ 1))]