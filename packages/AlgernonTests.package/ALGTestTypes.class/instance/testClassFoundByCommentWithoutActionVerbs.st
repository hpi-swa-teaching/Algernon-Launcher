testing
testClassFoundByCommentWithoutActionVerbs
	"Make sure normal input works"
	| names |
	self ensureMorphic.

	algerInstance show.
	algerInstance textField contents: 'Quicksilver'.
	algerInstance updateItemList.
	
	names := algerInstance itemList items collect: [ :entries | entries item name ].
	self assert: (names includes: 'ALGCore').