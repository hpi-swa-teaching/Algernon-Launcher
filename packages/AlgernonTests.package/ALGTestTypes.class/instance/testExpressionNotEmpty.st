testing expressions
testExpressionNotEmpty
	| textField expressions |
	textField := '1+1'.
	expressions := ALGExpressionType algertemList: textField.
	self deny: expressions isEmpty.