list creation
createListOfAlgeractions
	| list aClass |
	list := SortedCollection sortBlock: [:a :b | a rank > b rank].
	aClass := self typeObject.
	
	list add: (ALGAction withName:'run Test' 
					rank:10 target: self selector:#runTestSuite args:#()).

	^list.