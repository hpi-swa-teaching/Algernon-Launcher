initialization
initialize
	super initialize.
	active := false.
	algertems := self defaultAlgertems.
	self
		itemsCache: ALGCache new;
		wasChanged: false;
		initalizeOldFoci;
		initializeSorter;
		initializeCategorizer;
		initializeMorph;
		registerWithSystem;
		activate;
		openInWorld.