testing
testAlgernonKeepInput: input 
	self runQuery: input.
	self algInstance deactivate.
	self algInstance activate: nil.
	self assert: self algInstance textField contents equals: input