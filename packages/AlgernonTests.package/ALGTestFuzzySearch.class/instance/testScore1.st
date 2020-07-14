testing
testScore1
	"Make sure normal input works"
	self runQuery: 'AGTestFuzzySearch'.
	self assert: (self resultsClassIncludeName: 'ALGTestFuzzySearch').