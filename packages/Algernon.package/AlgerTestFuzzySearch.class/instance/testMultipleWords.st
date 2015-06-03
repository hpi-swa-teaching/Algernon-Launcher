as yet unclassified
testMultipleWords
	"Make sure normal input works"
	|resultList|
	self ensureMorphic.
	algerstance class initializeAlgertems.

	resultList := (algerstance relevantAlgertemsFor:'Test ru').
	algerstance show.
	algerstance textField contents:'Algernon'.
	algerstance updateItemList.
	algerstance selectNext.
	
	self assert: (algerstance currentAlgertem name) = 'Test Runner'.

	resultList := (algerstance relevantAlgertemsFor:'te Runner').
	algerstance show.
	algerstance textField contents:'Algernon'.
	algerstance updateItemList.
	algerstance selectNext.
	
	self assert: (algerstance currentAlgertem name) = 'Test Runner'.

	resultList := (algerstance relevantAlgertemsFor:'tes runn').
	algerstance show.
	algerstance textField contents:'Algernon'.
	algerstance updateItemList.
	algerstance selectNext.
	
	self assert: (algerstance currentAlgertem name) = 'Test Runner'.
	 ^ nil.