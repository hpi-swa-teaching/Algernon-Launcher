updating
push: anItem
	| crumb last |
	crumb := self createCrumb: '> ', anItem name.
	last := self submorphs last.
	last color: Color white.
	crumb
		position: (last right + self class crumbSpacing) @ last position y;
		color: Color black.
	self addMorphBack: crumb;
		updateWidth.