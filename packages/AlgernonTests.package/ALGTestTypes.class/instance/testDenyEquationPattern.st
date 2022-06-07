testing expressions
testDenyEquationPattern

	self deny: ['= 1+' matchesRegex: ALGExpressionType equationPattern.].