as yet unclassified
testInitializeAlgernon

	Algernon initializeAlgernon.
	self deny: Algernon currentInstance isNil.
	self assert: Algernon currentInstance active not