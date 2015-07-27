categorizing
categorize: anAlgertemList
	| categories |
	categories := OrderedCollection new.
	(anAlgertemList isEmpty) ifTrue: [ ^ categories ].
	categories add: (self extractFrom: anAlgertemList).
	^ self sorter sort: categories inOrder: #desc