algertem lists
algertemList

	| runner testClasses |
	runner := TestRunner new.
	testClasses := (runner findClassesForCategories: runner findCategories) asOrderedCollection.
	^ testClasses collect: [ :each | ALGItem withAlgertype: (self with: each) ].