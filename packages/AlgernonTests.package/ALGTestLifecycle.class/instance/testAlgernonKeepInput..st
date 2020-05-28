testing
testAlgernonKeepInput: input 
	self runQuery: input.
	self algerInstance deactivate.
	self algerInstance activate: nil.
	self assert: self algerInstance textField contents equals: input