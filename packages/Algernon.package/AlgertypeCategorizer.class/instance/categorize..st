categorizing
categorize: anAlgertemList
	"Returns a dictionary of Algertem collections indexed by their Algertype."
	^ self
		topResultsFrom: anAlgertemList
		into: (self
			algertypesFrom: anAlgertemList
			into: Dictionary new)