initialization
initialize

	super initialize.
	self
		initializeStacks;
		initializeProvider;
		initializeProperties;
		initializeMorphs;
		initializeFoci;
		initializeItems;
		registerWithSystem;
		initializePosition;
		activate.