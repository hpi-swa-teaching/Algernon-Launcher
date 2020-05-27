testing
testMulipleKeysMissing
	"Make sure normal input works"
	self runQuery: 'gernon'.
	self assert: (self resultsClassIncludeName: 'Algernon').
	self runQuery: 'Algern'.
	self assert: (self resultsClassIncludeName: 'Algernon').