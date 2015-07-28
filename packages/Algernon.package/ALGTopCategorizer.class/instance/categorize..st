categorizing
categorize: anItemCollection

	| categories |
	categories := OrderedCollection new.
	(anItemCollection isEmpty) ifTrue: [ ^ categories ].
	categories add: (self extractFrom: anItemCollection).
	^ self sorter sort: categories inOrder: #desc