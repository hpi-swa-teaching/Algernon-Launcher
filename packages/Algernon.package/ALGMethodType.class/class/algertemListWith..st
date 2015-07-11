algertem list
algertemListWith: aClass
	|classes algertems|
	algertems := OrderedCollection new.
	classes := aClass selectors asOrderedCollection.
	classes do: [ :each | algertems add: (
		ALGItem withAlgertype: (self withType:each withClass:aClass) relevantForEmptyString: false)].
	^algertems.

