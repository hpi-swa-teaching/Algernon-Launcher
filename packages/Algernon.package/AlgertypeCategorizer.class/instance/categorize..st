categorizing
categorize: anAlgertemList
	"Returns a dictionary of Algertem collections indexed by their Algertype."
	| categories |
	categories := Dictionary new.
	anAlgertemList do: [ :anAlgertem | | key |
		key := anAlgertem algertype class name.
		categories at: key ifAbsentPut: [ OrderedCollection new ].
		(categories at: key) add: anAlgertem ].
	 ^ categories