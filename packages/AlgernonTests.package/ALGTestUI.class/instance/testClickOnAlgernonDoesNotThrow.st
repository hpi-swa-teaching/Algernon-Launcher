testing
testClickOnAlgernonDoesNotThrow
	self assert: (self algerInstance itemList handlesMouseDown: nil).
	self runQuery: 'Algernon'.
	self algerInstance itemList mouseDown: nil.