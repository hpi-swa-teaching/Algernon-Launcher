testing
testClassFoundByCommentWithoutActionVerbs
	"Make sure normal input works"
	| names |
	self runQuery: 'Quicksilver'.
	
	names := algerInstance itemList items collect: [ :entries | entries item name ].
	self assert: (names includes: 'ALGCore').