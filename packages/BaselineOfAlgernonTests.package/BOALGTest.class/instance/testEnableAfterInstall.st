tests
testEnableAfterInstall

	self currentGitBranch ifEmpty: [ ^ nil ].
	self ensureInternetConnection.
	self metacelloInstance 
		get;
		load.
	self assert: true equals: ALGCore activateAlgernon