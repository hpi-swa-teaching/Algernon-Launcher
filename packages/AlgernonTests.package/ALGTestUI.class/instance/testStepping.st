testing
testStepping
	self algerInstance stopStepping.
	self algerInstance textField contents: 'ALGTestUI'.
	self deny: (self resultsClassIncludeName:'ALGTestUI').
	self algerInstance step. 	"The first step does no logic"
	self algerInstance step.
	self assert: self items isEmpty not.
	self assert: (self resultsClassIncludeName: 'ALGTestUI')