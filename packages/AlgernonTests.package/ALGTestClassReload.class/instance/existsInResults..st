helpers
existsInResults: aClassName
	
	| names classItems |
	self runQuery: 'browse ' , aClassName asString.

	classItems := self itemMorphs copy.
	names := classItems collect: [ :entries | entries item name ].
	^(names anySatisfy: [ :each | each = aClassName asString])