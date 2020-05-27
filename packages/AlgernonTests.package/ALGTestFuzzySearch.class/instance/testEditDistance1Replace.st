testing
testEditDistance1Replace
	"Make sure normal input works"
	| names |
	self runQuery: 'Algxrnon'.
	
	names := algerInstance itemList items collect: [ :entries | entries item name ].
	self assert: (names includes: 'Algernon').