testing expressions
testDivideByZero

	| message expressionItem |
	
	message:= 'Don´t divide by zero'.
	self runQuery: '1/0'.
	expressionItem := self items first.
	self assert: message equals: expressionItem algerType name

	