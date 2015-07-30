running
testMulipleKeysMissing
	"Make sure normal input works"
	self ensureMorphic.
	algerstance class initializeAlgertems.

	algerstance show.
	algerstance textField contents:'gernon'.
	algerstance updateItemList.	
	self assert: (algerstance itemList selectedListItem name) = 'Algernon'.

	algerstance show.
	algerstance textField contents:'Algern'.
	algerstance updateItemList.	
	self assert: (algerstance itemList selectedListItem name) = 'Algernon'.
	
	algerstance show.
	algerstance textField contents:'Algenon'.
	algerstance updateItemList.	
	self assert: (algerstance itemList selectedListItem name) = 'Algernon'.
	 ^ nil.