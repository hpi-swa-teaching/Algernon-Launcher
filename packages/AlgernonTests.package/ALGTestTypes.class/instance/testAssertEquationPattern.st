testing expressions
testAssertEquationPattern

	self assert: ['1+ 1 + 1' matchesRegex: ALGExpressionType equationPattern.].
	self assert: ['-1 - 11' matchesRegex: ALGExpressionType equationPattern.].
	self assert: ['2/2' matchesRegex: ALGExpressionType equationPattern.].