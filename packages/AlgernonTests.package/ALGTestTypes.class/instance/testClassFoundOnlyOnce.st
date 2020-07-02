testing
testClassFoundOnlyOnce
	"Make sure normal input works"
	| names classSeperator classItems |
	self runQuery: 'ALGAction'.

	classSeperator := self algerInstance itemList items detect: [ :entries | entries contents = 'Class']. 
	classItems := self algerInstance itemList items copyAfter: classSeperator.
	names := classItems collect: [ :entries | entries item name ].
	self assert: 1 equals: (names count: [ :each | each = 'ALGAction'])