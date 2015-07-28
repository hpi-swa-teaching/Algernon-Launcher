updating
pop

	self removeMorph: self submorphs last.
	self updateWidth.
	(self submorphs size > 1)
		ifTrue: [ self submorphs last color: self class highlightedTextColor ]