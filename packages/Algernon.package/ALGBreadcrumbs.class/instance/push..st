updating
push: anItem
	| crumb last |
	crumb := self createCrumb: '> ', anItem name.
	last := self submorphs last.
	crumb position: (last right + self class crumbSpacing) @ last position y.
	self addMorphBack: crumb;
		updateWidth.