testing top results
testMaximumNumberTopResults

	self assert: 5 equals: ALGCore maximumTopResults
		description: 'default value for maximumTopResults'.
	
	ALGCore maximumTopResults: 0.
	self assert: 0 equals: ALGCore maximumTopResults
		description: 'lower bound for maximumTopResults'.
	
	ALGCore maximumTopResults: 16.
	self assert: 15 equals: ALGCore maximumTopResults
		description: 'higher bound for maximumTopResults'.
		
	ALGCore maximumTopResults: 5.
	self assert: 5 equals: ALGCore maximumTopResults
		description: 'value within bounds for maximumTopResults'