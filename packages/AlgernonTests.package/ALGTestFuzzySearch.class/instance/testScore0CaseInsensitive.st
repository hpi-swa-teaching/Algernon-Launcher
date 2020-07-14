testing
testScore0CaseInsensitive
	"Make sure normal input works"
	self runQuery: 'aLgTeStFuZzYsEaRcH'.
	self assert: (self resultsClassIncludeName: 'ALGTestFuzzySearch').