running
testSingleKeyMissing
	"Make sure normal input works"
	self ensureMorphic.
	algerstance class initializeAlgertems.

	algerstance show.
	algerstance textField contents:'lgernon'.
	algerstance updateItemList.
	self assert: (algerstance itemList selectedListItem name) = 'Algernon'.

	algerstance show.
	algerstance textField contents:'Algernon'.
	algerstance updateItemList.
	self assert: (algerstance itemList selectedListItem name) = 'Algernon'.
	
	algerstance show.
	algerstance textField contents:'Algenon'.
	algerstance updateItemList.
	self assert: (algerstance itemList selectedListItem name) = 'Algernon'.
	 ^ nil.