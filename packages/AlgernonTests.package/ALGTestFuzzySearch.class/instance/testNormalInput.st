testing
testNormalInput
	"Make sure normal input works"
	self runQuery: 'Algernon'.
	
	self assert: (self resultsClassIncludeName: 'Algernon').