testing
testNormalInput
	"Make sure normal input works"
	| names |
	self runQuery: 'Algernon'.
	
	names := algerInstance itemList items collect: [ :entries | entries item name ].
	self assert: (names includes: 'Algernon').