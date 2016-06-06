instance creation
algertemList

	| classes algertems |
	algertems := OrderedCollection new.
	classes := Smalltalk allClasses asOrderedCollection.
	classes do: [ :each | algertems addAll: (self algertemListWith: each) ].
	^ algertems