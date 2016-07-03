as yet unclassified
testEditDistanceEmptyStrings
	
	self assert: 0 equals: (algorithm scoreBetween: String empty and: String empty)