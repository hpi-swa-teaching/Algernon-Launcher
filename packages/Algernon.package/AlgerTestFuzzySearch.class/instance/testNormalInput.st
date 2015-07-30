running
testNormalInput
	"Make sure normal input works"
	self ensureMorphic.
	algerstance class initializeAlgertems.

	algerstance show.
	algerstance textField contents:'Algernon'.
	algerstance updateItemList.
	
	self assert: (algerstance itemList selectedListItem name) = 'Algernon'.
	 ^ nil.