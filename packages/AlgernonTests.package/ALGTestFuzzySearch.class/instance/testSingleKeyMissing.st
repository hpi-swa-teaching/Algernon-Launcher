testing
testSingleKeyMissing
	"Make sure normal input works"
	| names |
	self runQuery: 'lgernon'.
	
	names := algerInstance itemList items collect: [ :entries | entries item name ].
	self assert: (names includes: 'Algernon').

	self runQuery: 'Algernon'.
	names := algerInstance itemList items collect: [ :entries | entries item name ].
	self assert: (names includes: 'Algernon').