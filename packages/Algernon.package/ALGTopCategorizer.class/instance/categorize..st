categorizing
categorize: anItemCollection

	| categories topCategory |
	categories := OrderedCollection new.
	topCategory := self extractFrom: anItemCollection.
	(anItemCollection isEmpty or: [topCategory isEmpty]) ifTrue: [ ^ categories ].
	categories add: topCategory.
	^ self sorter sort: categories inOrder: #desc