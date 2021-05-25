testing class type
testClassFoundOnlyOnce
	"Make sure normal input works"
	| names classItems |
	self runQuery: 'ALGAction'.

	classItems := self itemMorphs copy.
	names := classItems collect: [ :entries | entries item name ].
	self assert: 1 equals: (names count: [ :each | each = 'ALGActionVerbFilter'])