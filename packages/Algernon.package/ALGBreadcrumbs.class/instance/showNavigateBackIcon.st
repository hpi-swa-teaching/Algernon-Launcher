updating
showNavigateBackIcon

	self navigateBackIconMorph show.
	self defaultCrumb
		position: (
			self position x +
			self class crumbSpacing +
			self class iconSpacing +
			self navigateBackIconMorph width) @ self defaultCrumb position y