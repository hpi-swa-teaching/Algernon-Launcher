testing
testClassFoundByCommentWithoutActionVerbs
	"Make sure normal input works"
	self runQuery: 'Quicksilver'.
	self assert: (algerInstance itemList items anySatisfy:  [ :entries | entries item name = 'ALGCore']).