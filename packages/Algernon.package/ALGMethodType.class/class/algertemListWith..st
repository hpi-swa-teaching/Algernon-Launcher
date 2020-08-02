algertem lists
algertemListWith: aClass
	^ aClass selectors asOrderedCollection
		collect: [:each | ALGItem withAlgertype: (self withType:each withClass:aClass) ].