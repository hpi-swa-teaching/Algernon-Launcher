testing expressions
testDenyEquationPattern

	self deny: ['1+' matchesRegex: ALGExpressionType equationPattern.].
	self deny: ['2+-3' matchesRegex: ALGExpressionType equationPattern.].
	self deny: ['-3/-3' matchesRegex: ALGExpressionType equationPattern.].