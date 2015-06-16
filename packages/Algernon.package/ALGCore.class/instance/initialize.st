initialization
initialize
	super initialize.
	active := false.
	algertems := self defaultAlgertems.
	self
		wasChanged: false;
		initalizeOldFoci;
		initializeSorter;
		initializeCategorizer;
		initializeMorph;
		registerWithSystem;
		activate;
		openInWorld.