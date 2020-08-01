testing
testActionFilter
	self runQuery: 'browse Morph'.
	self assert: (self items allSatisfy: [:each | each defaultAlgeraction name includesSubstring: 'browse']).
	self assert: (self items anySatisfy: [:each | each algerType typeName = 'Class'
						and: [each algerType name = 'Morph']]).
	self assert: self nameOfFirstResult = 'Morph'