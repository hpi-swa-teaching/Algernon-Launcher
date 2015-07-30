running
testMethodCalls
	"Make sure temporary names are searched"
		
	self ensureMorphic.
	algerstance class initializeAlgertems.

	algerstance relevantAlgertemsFor:'MethodAlgertype'.
	algerstance show.
	algerstance showChildList.
	algerstance textField contents:'sourceCodeAt:'.
	algerstance updateItemList.	
	
	self assert:(algerstance algertems size >= 1).
	^ nil