initialization
initializeDefaultCrumb
	| crumb |
	crumb := self createCrumb: 'Algernon'.
	crumb center: self center.
	crumb position: (self position x + 10) @ crumb position y.
	self addMorphBack: crumb;
		updateWidth.