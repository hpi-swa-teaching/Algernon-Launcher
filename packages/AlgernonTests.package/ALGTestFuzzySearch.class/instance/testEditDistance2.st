testing
testEditDistance2
	"Make sure normal input works"
	| names |
	self ensureMorphic.

	algerstance show.
	algerstance textField contents:'Algxnon'.
	algerstance updateItemList.
	
	names := algerstance itemList items collect: [ :entries | entries item name ].
	self assert: (names includes: 'Algernon').