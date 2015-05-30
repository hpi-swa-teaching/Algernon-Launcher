running
testTemporaryNames
	"Make sure temporary names are searched"
		
	self ensureMorphic.
	algerstance class initializeAlgertems.

	algerstance relevantAlgertemsFor:'MethodAlgertype'.
	algerstance show.
	algerstance showChildList.
	algerstance textField contents:'aLowercaseString'.
	algerstance updateItemList.	
	
	self assert:(algerstance algertems size >= 2).
	^ nil