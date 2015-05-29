as yet unclassified
categorize: anAlgertemList
	| categories |
	categories := Dictionary new.
	anAlgertemList do: [ :anAlgertem |
		| key |
		key := anAlgertem class name.
		categories
			at: key
			ifAbsentPut: [ anAlgertem ] ].
	  ^ categories
		