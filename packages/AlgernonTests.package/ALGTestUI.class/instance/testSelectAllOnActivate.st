testing appereance
testSelectAllOnActivate
	
	self algInstance activate.
	self runQuery: 'A \\ test / query'.
	self algInstance deactivate.
	self algInstance activate.
	self assert: self algInstance textField inputfield selection = 'A \\ test / query'
	