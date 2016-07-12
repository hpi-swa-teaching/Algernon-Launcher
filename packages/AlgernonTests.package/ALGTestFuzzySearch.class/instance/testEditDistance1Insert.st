testing
testEditDistance1Insert
	"Make sure normal input works"
	| names |
	self ensureMorphic.

	algerstance show.
	algerstance textField contents:'Algrnon'.
	algerstance updateItemList.
	
	names := algerstance itemList items collect: [ :entries | entries item name ].
	self assert: (names includes: 'Algernon').