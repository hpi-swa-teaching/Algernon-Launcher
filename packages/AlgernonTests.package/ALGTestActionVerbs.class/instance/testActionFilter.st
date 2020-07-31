testing
testActionFilter
	self runQuery: 'browse Morph'.
	self assert: (self items
				allSatisfy: [:each | each defaultAlgeraction name includesSubstring: 'browse']).
	"All items should have the default action browse"
	self assert: (self items
				anySatisfy: [:each | each algerType typeName = 'Class'
						and: [each algerType name = 'Morph']]).
	"Morph Class shows up"
	self assert: self nameOfFirstResult = 'Morph'
	"We get an exact result for morph"