testing
testInitializeAlgernon

	ALGCore initializeAlgernon.
	self deny: ALGCore currentInstance isNil.
	self deny: ALGCore currentInstance active