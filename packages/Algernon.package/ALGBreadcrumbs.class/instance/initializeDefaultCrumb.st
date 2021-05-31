initialization
initializeDefaultCrumb

	self defaultCrumb: (self createCrumb: ALGCore title).
	self defaultCrumb center: self center.
	self defaultCrumb 
		position: (self position x + self class crumbSpacing) @ self defaultCrumb position y.
	self addMorphBack: self defaultCrumb; updateWidth