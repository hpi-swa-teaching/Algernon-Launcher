testing
testScore0
	"Make sure normal input works"
	self runQuery: 'ALGTestFuzzySearch'.
	self assert: (self resultsClassIncludeName: 'ALGTestFuzzySearch').