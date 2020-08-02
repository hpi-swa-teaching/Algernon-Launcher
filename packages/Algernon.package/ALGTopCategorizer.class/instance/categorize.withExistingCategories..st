categorizing
categorize: anItemList withExistingCategories: aCategoriesCollection 

	| categories topCategory |
	categories := OrderedCollection new.
	topCategory := self extractFrom: anItemList.
	(anItemList isEmpty or: [topCategory isEmpty]) ifTrue: [ ^ categories ].
	categories add: topCategory.
	^ self sorter sort: categories inOrder: #desc