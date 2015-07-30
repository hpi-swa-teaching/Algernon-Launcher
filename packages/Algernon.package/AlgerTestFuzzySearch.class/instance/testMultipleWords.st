running
testMultipleWords
	"Make sure normal input works"
	self ensureMorphic.
	algerstance class initializeAlgertems.

	algerstance show.
	algerstance textField contents:'Test ru'.
	algerstance updateItemList.
	self assert: (algerstance currentAlgertem name) = 'Test Runner'.

	algerstance show.
	algerstance textField contents:'te Runner'.
	algerstance updateItemList.
	self assert: (algerstance currentAlgertem name) = 'Test Runner'.

	algerstance show.
	algerstance textField contents:'tes runn'.
	algerstance updateItemList.
	self assert: (algerstance currentAlgertem name) = 'Test Runner'.
	
	 ^ nil.