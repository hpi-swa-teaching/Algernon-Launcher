helpers
evaluateClassTests: aCollection

	| positiveResults |
	
	positiveResults := aCollection select: [ :classTest | 
		(classTest methods select: [ :methodTest | 
			(self evaluateMethodTest: methodTest) notEmpty]) notEmpty].
	
	(positiveResults notEmpty) ifTrue: [
		self signalFailure: 'ALGLint found problems in ' , positiveResults size asString , ' class(es). (See Transcript or log above)']