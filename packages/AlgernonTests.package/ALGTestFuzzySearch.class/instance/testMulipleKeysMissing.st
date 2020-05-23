testing
testMulipleKeysMissing
	"Make sure normal input works"
	| names |
	self runQuery: 'gernon'.
	names := algerInstance itemList items collect: [ :entries | entries item name ].
	self assert: (names includes: 'Algernon').

	algerInstance show.
	algerInstance textField contents:'Algern'.
	algerInstance updateItemList.	
	names := algerInstance itemList items collect: [ :entries | entries item name ].
	self assert: (names includes: 'Algernon').