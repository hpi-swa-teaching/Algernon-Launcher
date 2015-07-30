running
testSingleKeyMissing
	"Make sure normal input works"
	| names |

	self ensureMorphic.

	algerstance show.
	algerstance textField contents:'lgernon'.
	algerstance updateItemList.
	names := algerstance itemList items collect: [ :entries | entries item name ].
	self assert: (names includes: 'Algernon').

	algerstance show.
	algerstance textField contents:'Algernon'.
	algerstance updateItemList.
	names := algerstance itemList items collect: [ :entries | entries item name ].
	self assert: (names includes: 'Algernon').
	
	algerstance show.
	algerstance textField contents:'Algenon'.
	algerstance updateItemList.
	names := algerstance itemList items collect: [ :entries | entries item name ].
	self assert: (names includes: 'Algernon').

	 ^ nil.