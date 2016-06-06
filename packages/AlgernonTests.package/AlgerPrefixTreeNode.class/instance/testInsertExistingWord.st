testing
testInsertExistingWord
	
	rootNode insert: 'existent' with: #mySecondSelector.
	self assert: (rootNode find: 'existent') methodSet size equals: 2