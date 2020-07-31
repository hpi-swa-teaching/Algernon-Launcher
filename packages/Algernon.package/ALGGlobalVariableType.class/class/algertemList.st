algertem lists
algertemList

	| algertems|
	algertems := OrderedCollection new.
	Smalltalk globals associationsDo: [ :each |
		each value class isMeta ifFalse: [ algertems add: (self createItemFor: each)]].
	^ algertems

