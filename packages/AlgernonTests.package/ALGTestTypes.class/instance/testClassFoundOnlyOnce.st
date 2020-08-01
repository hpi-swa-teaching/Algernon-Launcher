testing class type
testClassFoundOnlyOnce
	"Make sure normal input works"
	| names classSeperator classItems |
	self runQuery: 'ALGAction'.

	classSeperator := self algInstance itemList items detect: [ :entries | entries contents = 'Class']. 
	classItems := self algInstance itemList items copyAfter: classSeperator.
	names := classItems collect: [ :entries | entries item name ].
	self assert: 1 equals: (names count: [ :each | each = 'ALGActionVerbFilter'])