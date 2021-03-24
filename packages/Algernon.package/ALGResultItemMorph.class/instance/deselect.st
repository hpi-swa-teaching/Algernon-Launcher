event handling
deselect
	self color: self class normalFillStyle.
	self childrenIndicatorMorph
		ifNotNil: [self childrenIndicatorMorph hide].
	self actionMorph
		ifNotNil: [self actionMorph hide]