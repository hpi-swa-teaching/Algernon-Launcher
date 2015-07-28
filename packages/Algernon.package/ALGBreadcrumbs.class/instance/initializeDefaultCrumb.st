initialization
initializeDefaultCrumb

	| crumb |
	crumb := self createCrumb: self controller class title.
	crumb center: self center.
	crumb position: (self position x + self class crumbSpacing) @ crumb position y.
	self addMorphBack: crumb; updateWidth