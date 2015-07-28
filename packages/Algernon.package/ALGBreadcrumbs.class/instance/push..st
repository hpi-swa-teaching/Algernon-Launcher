updating
push: anItem

	| crumb last |
	crumb := self createCrumb: self class delimeter, anItem name.
	last := self submorphs last.
	last color: self class defaultTextColor.
	crumb
		position: (last right + self class crumbSpacing) @ last position y;
		color: self class highlightedTextColor.
	self addMorphBack: crumb; updateWidth