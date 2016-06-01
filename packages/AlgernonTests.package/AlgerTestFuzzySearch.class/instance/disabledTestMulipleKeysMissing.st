testing
disabledTestMulipleKeysMissing
	"Make sure normal input works"
	| names |
	self ensureMorphic.

	algerstance show.
	algerstance textField contents:'gernon'.
	algerstance updateItemList.
	names := algerstance itemList items collect: [ :entries | entries item name ].
	self assert: (names includes: 'Algernon').

	algerstance show.
	algerstance textField contents:'Algern'.
	algerstance updateItemList.	
	names := algerstance itemList items collect: [ :entries | entries item name ].
	self assert: (names includes: 'Algernon').