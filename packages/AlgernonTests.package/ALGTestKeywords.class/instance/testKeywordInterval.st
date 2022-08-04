testing
testKeywordInterval

	| inputField |
	
	inputField := ALGInputField new.
	self assert: (inputField keywordIntervalFor: '') equals: (0 to: 0).
	self assert: (inputField keywordIntervalFor: 'ru') equals: (0 to: 0).
	ALGActionVerbFilter keywords do: [ :each | 
		self assert: (inputField keywordIntervalFor: each) equals: (1 to: each size) ].
	ALGActionVerbFilter keywords do: [ :each | 
		self assert: (inputField keywordIntervalFor: each , ' abc') equals: (1 to: each size) ].
	ALGActionVerbFilter keywords do: [ :each | 
		self assert: (inputField keywordIntervalFor: 'abc ' , each) equals: (0 to: 0) ]