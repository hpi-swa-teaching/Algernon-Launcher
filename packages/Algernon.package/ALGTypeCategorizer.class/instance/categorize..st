categorizing
categorize: anItemCollection

	| categories typeDictionary |
	categories := OrderedCollection new.
	anItemCollection ifEmpty: [ ^ categories ].
	typeDictionary := self typesFrom: anItemCollection.
	self extractFrom: typeDictionary to: categories.
	^ self sorter sort: categories inOrder: #desc