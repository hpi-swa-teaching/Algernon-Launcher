initialization
initialize

	super initialize.
	self
		initializeProvider;
		initializeProperties;
		initializeMorphs;
		registerWithSystem;
		activate