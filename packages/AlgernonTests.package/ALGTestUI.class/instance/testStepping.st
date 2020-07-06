testing
testStepping
	self algInstance stopStepping.
	self algInstance textField contents: 'ALGTestUI'.
	self deny: (self resultsClassIncludeName:'ALGTestUI').
	self algInstance step. 	"The first step does no logic"
	self algInstance step.
	self assert: self items isEmpty not.
	self assert: (self resultsClassIncludeName: 'ALGTestUI')