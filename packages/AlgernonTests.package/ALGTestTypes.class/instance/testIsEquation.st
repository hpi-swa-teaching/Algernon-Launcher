testing expressions
testIsEquation

	| expressions |
	
	self runQuery: '1+1'.
	expressions := ALGExpressionType with: self algInstance.
	self assert: expressions isEquation.
	
	self runQuery: 'new Morph openInWorld'.
	expressions := ALGExpressionType with: self algInstance.
	self deny: expressions isEquation.