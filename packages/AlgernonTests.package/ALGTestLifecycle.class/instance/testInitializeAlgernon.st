testing
testInitializeAlgernon
	Algernon initializeAlgernon.
	self deny: Algernon currentInstance isNil.
	self deny: Algernon currentInstance active.
	Algernon cleanup