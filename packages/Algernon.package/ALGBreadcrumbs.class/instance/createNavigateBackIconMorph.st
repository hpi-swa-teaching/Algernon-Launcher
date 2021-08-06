initialization
createNavigateBackIconMorph
	| shiftIconMorph tabIconMorph |
	
	shiftIconMorph := self createNavigationIcon: #NavigateBack.
	tabIconMorph := self createNavigationIcon: #HasChildren.
	shiftIconMorph 
		position: (self position x + self class crumbSpacing) @ shiftIconMorph position y.
	tabIconMorph 
		position: (shiftIconMorph position x +
						shiftIconMorph width +
						self class iconInsideSpacing) @ tabIconMorph position y.
	^ self packIconsIntoMorph: { shiftIconMorph . tabIconMorph }
