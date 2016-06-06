algertem lists
algertemListWith: aClass

	| algertems methods |
	algertems := OrderedCollection new.
	methods := aClass selectors asOrderedCollection.
	methods do: [ :each | algertems add: (
		ALGItem withAlgertype: (self withType:each withClass:aClass) relevantForEmptyString: false)].
	^ algertems

