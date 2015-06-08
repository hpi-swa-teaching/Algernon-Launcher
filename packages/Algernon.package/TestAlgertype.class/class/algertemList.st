algertem lists
algertemList
	|runner testClasses algertems|
	runner := TestRunner new.
	algertems := OrderedCollection new.
	testClasses := (runner findClassesForCategories: runner findCategories) asOrderedCollection.
	testClasses do: [ :each | algertems add: (
		Algertem withAlgertype: (self with:each))].
	^algertems.

