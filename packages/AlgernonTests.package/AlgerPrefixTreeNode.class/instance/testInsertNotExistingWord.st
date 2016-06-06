testing
testInsertNotExistingWord
	
	rootNode insert: 'nonExistent' with: #mySelector.
	self assert: (rootNode find: 'nonExistent') notNil