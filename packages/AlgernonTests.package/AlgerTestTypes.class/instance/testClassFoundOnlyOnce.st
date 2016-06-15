testing
testClassFoundOnlyOnce
	"Make sure normal input works"
	| names classSeperator classItems |
	self ensureMorphic.

	algerstance show.
	algerstance textField contents: 'ALGAction'.
	algerstance updateItemList.

	classSeperator := algerstance itemList items detect: [ :entries | entries contents = 'Class']. 
	classItems := algerstance itemList items copyAfter: classSeperator.
	names := classItems collect: [ :entries | entries item name ].
	self assert: ((names count: [ :each | each = 'ALGAction']) = 1).