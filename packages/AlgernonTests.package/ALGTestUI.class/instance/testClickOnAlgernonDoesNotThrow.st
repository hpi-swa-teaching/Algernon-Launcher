testing
testClickOnAlgernonDoesNotThrow
	self assert: (self algInstance itemList handlesMouseDown: nil).
	self runQuery: 'Algernon'.
	self algInstance itemList mouseDown: nil.