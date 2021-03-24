testing general behavior
testClassFoundByCommentWithoutActionVerbs
	"Make sure normal input works"
	self runQuery: 'Quicksilver'.
	self assert: (self items anySatisfy: [ :entries | entries name = 'ALGCore'])