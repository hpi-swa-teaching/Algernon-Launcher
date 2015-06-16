algertem lists
algertemList
	|classes algertems|
	algertems := OrderedCollection new.
	classes := Smalltalk allClasses asOrderedCollection.
	classes do: [ :each | algertems add: (
		ALGItem withAlgertype: (self with:each))].
	^algertems.

