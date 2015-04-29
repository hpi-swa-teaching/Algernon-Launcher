initialization
initialize
	super initialize.
	active := false.
	algertems := self defaultAlgertems.
	self
		wasChanged: false;
		initalizeOldFoci;
		initializeSorter;
		initializeMorph;
		registerWithSystem;
		activate.