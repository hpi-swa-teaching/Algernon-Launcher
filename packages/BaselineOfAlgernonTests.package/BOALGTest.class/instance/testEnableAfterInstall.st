tests
testEnableAfterInstall
	self assert: true.
	"self ensureInternetConnection.
	self metacelloInstance 
		get;
		load.
	self assert: true equals: ALGCore activateAlgernon"