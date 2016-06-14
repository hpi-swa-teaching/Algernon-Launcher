testing
testClassFoundByCommentWithoutActionVerbs
	"Make sure normal input works"
	| names |
	self ensureMorphic.

	algerstance show.
	algerstance textField contents: 'Quicksilver'.
	algerstance updateItemList.
	
	names := algerstance itemList items collect: [ :entries | entries item name ].
	self assert: (names includes: 'ALGCore').