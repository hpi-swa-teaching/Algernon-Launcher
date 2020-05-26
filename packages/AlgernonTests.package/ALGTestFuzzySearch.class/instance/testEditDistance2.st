testing
testEditDistance2
	"Make sure normal input works"
	self runQuery: 'Algxnon'.
	
	self assert: (self resultsClassIncludeName: 'Algernon').