algertem lists
algertemList
	
	| items |
	
	(Smalltalk classNamed: #SquitBrowser) ifNil:
		[^ {}].
	items := OrderedCollection new.
	SquotWorkingCopy registered do: [ :each | items addAll: (self algertemListWith: each) ].
	^ items