updating
hideNavigateBackIcon

	self navigateBackIconMorph hide.
	self defaultCrumb 
		position: (self position x + self class crumbSpacing) @ self defaultCrumb position y.