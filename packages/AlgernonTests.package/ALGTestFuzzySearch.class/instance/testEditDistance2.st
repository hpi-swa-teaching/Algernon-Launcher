testing
testEditDistance2
	"Make sure normal input works"
	| names |
	self runQuery: 'Algxnon'.
	
	names := algerInstance itemList items collect: [ :entries | entries item name ].
	self assert: (names includes: 'Algernon').