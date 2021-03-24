private
ArbitraryCodeRule: rule
"Verifies an arbritrary code rule."
	| testRunner testObjects positiveResults |
	testRunner := (SLTestRunner new) environment: (SLDefaultEnvironment new).
	testObjects := SystemNavigation default allClasses .

	testObjects := testObjects select: [:x| x class category beginsWith: 'Algernon' ].
	testObjects := testObjects collect: [ :aObject |
		aObject as: SLTestObject].
	testRunner runOnTests: {rule} andTestObjects: testObjects.
	positiveResults := testObjects select: [:testObject | | result |
		result := testObject resultOf: rule.
		(result respondsTo: #>)
			ifTrue: [result result > 0]
			ifFalse: [result isNegative ] ].
	self assert: 0  equals: positiveResults size. 