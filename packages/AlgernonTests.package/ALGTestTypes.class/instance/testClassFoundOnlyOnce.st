testing class type
testClassFoundOnlyOnce
	"Make sure normal input works"
	| names classSeperator classItems |
	self runQuery: 'ALGAction'.

	classSeperator := self itemMorphs detect: [ :entries | entries contents = 'Class']. 
	classItems := self itemMorphs copyAfter: classSeperator.
	names := classItems collect: [ :entries | entries item name ].
	self assert: 1 equals: (names count: [ :each | each = 'ALGActionVerbFilter'])