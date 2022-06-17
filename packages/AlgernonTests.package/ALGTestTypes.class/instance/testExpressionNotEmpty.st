testing expressions
testExpressionNotEmpty

	| expressions |
	
	self runQuery: '1+1'.
	expressions := ALGExpressionType algertemList: self algInstance.
	self deny: expressions isEmpty.