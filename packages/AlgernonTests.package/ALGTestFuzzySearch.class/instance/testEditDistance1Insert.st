testing
testEditDistance1Insert
	"Make sure normal input works"
	| names |
	self runQuery: 'Algrnon'.
	
	names := algerInstance itemList items collect: [ :entries | entries item name ].
	self assert: (names includes: 'Algernon').