testing
testScore0CaseInsensitive
	"Make sure normal input works"
	self runQuery: 'aLGERNON'.
	self assert: (self resultsClassIncludeName: 'Algernon').