algertem lists
algertemListWith: aClass
	| items |
	items := aClass selectors asOrderedCollection
		collect: [:each | ALGItem withAlgertype: (self withType: each withClass: aClass) ].
		
	items addAll: (aClass class selectors asOrderedCollection
		collect: [:each | ALGItem withAlgertype: (self withType: self prefixForClassMethods, each withClass: aClass class) ]).
	
	^ items