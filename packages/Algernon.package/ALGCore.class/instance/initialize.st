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
		initializeMorphs;
		registerWithSystem;
		activate;
		openInWorld.
	self currentAlgertem: nil.