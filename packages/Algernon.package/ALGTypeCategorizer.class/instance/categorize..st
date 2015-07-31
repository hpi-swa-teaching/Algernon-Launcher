categorizing
categorize: anItemCollection

	| categories typeDictionary |
	categories := OrderedCollection new.
	(anItemCollection isEmpty) ifTrue: [ ^ categories ].
	typeDictionary := Dictionary new.
	typeDictionary := self typesFrom: anItemCollection into: typeDictionary.
	self extractFrom: typeDictionary to: categories.
	^ self sorter sort: categories inOrder: #desc