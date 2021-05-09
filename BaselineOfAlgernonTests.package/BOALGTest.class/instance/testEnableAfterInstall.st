tests
testEnableAfterInstall

	self metacelloInstance 
		get;
		load.
	self assert: ALGCore activateAlgernon = true.