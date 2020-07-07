testing
testStepping
	self algerInstance stopStepping.
	self algerInstance textField contents: 'Algernon'.
	self assert: self items isEmpty.
	self algerInstance step. 	"The first step does no logic"
	self algerInstance step.
	self assert: self items isEmpty not.
	self assert: (self resultsClassIncludeName: 'Algernon')