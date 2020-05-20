testing
testClassFoundOnlyOnce
	"Make sure normal input works"
	| names classSeperator classItems |
	self ensureMorphic.

	algerInstance show.
	algerInstance textField contents: 'ALGAction'.
	algerInstance updateItemList.

	classSeperator := algerInstance itemList items detect: [ :entries | entries contents = 'Class']. 
	classItems := algerInstance itemList items copyAfter: classSeperator.
	names := classItems collect: [ :entries | entries item name ].
	self assert: 1 equals: (names count: [ :each | each = 'ALGAction'])