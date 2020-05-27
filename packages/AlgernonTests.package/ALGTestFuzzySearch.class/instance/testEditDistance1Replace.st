testing
testEditDistance1Replace
	"Make sure normal input works"
	self runQuery: 'Algxrnon'.
	self assert: (self resultsClassIncludeName: 'Algernon').