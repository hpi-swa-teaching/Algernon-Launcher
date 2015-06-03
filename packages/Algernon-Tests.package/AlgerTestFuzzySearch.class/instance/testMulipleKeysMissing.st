as yet unclassified
testMulipleKeysMissing
	"Make sure normal input works"
	| resultList |
	self ensureMorphic.
	algerstance class initializeAlgertems.

	resultList := (algerstance relevantAlgertemsFor:'gernon').
	algerstance show.
	algerstance textField contents:'Algernon'.
	algerstance updateItemList.
	algerstance selectNext.
	
	self assert: (algerstance currentAlgertem name) = 'Algernon'.

	resultList := (algerstance relevantAlgertemsFor:'Algern').
	algerstance show.
	algerstance textField contents:'Algernon'.
	algerstance updateItemList.
	algerstance selectNext.
	
	self assert: (algerstance currentAlgertem name) = 'Alg on'.
	
	resultList := (algerstance relevantAlgertemsFor:'Algenon').
	algerstance show.
	algerstance textField contents:'Algernon'.
	algerstance updateItemList.
	algerstance selectNext.
	
	self assert: (algerstance currentAlgertem name) = 'Algernon'.
	 ^ nil.