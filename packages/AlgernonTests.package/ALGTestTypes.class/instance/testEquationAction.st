testing expressions
testEquationAction

	"|equationItem|
	
	self runQuery: '=1+1'.
	equationItem:= self items first.
	self assert: '2' equals: equationItem algerType name."