helpers
evaluateMethodTest: aSLMethodTest

	| results |
	
	results := aSLMethodTest results.
	^ results select: [ :result |
		result value ifTrue: [
			Transcript cr.
			Transcript show: '=== ALGLint Failure ==='.
			Transcript cr.
			Transcript show: '''' , aSLMethodTest name , ''' failed on ''' , result testData name , '''.'.
			Transcript cr.
			Transcript show: 'Description: ' , result testData description.
			Transcript cr.].
		result value]
	