algertem lists
algertemList
	|classes algertems|
	algertems := OrderedCollection new.
	classes := Smalltalk allClasses asOrderedCollection.
	classes do: [ :each | algertems add: (
		Algertem withAlgertype: (self with:each))].
	^algertems.

