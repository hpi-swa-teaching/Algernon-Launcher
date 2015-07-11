categorizing
categorize: anAlgertemList
	"Returns a collection of Algercats indexed by their Algertype and sorted
	by their rank."
	| categories typeDictionary |
	categories := OrderedCollection new.
	typeDictionary := Dictionary new.
	typeDictionary := self algertypesFrom: anAlgertemList into: typeDictionary.
	self addAlgertypesFrom: typeDictionary to: categories.
	^ self sorter sort: categories inOrder: #desc