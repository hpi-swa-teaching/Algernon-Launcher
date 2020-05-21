testing
testEditDistance1Insert
	"Make sure normal input works"
	| names |
	self ensureMorphic.

	self algerInstance show.
	self algerInstance textField contents:'Algrnon'.
	self algerInstance updateItemList.
	
	names := algerInstance itemList items collect: [ :entries | entries item name ].
	self assert: (names includes: 'Algernon').