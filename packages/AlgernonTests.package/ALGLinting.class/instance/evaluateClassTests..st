helpers
evaluateClassTests: aCollection

	| positiveResults |
	
	positiveResults := aCollection select: [ :classTest | 
		(classTest methods select: [ :methodTest | 
			(self evaluateMethodTest: methodTest) size > 0]) size > 0].
	
	(positiveResults size > 0) ifTrue: [
		self signalFailure: 'ALGLint found problems in ' , positiveResults size asString , ' class(es). (See Transcript or log above)']