as yet unclassified
testSingleKeyMissing
	"Make sure normal input works"
	| resultList |
	self ensureMorphic.
	algerstance class initializeAlgertems.

	resultList := (algerstance relevantAlgertemsFor:'lgernon').
	algerstance show.
	algerstance textField contents:'Algernon'.
	algerstance updateItemList.
	algerstance selectNext.
	
	self assert: (algerstance currentAlgertem name) = 'Algernon'.

	resultList := (algerstance relevantAlgertemsFor:'Algerno').
	algerstance show.
	algerstance textField contents:'Algernon'.
	algerstance updateItemList.
	algerstance selectNext.
	
	self assert: (algerstance currentAlgertem name) = 'Algernon'.
	
	resultList := (algerstance relevantAlgertemsFor:'Algenon').
	algerstance show.
	algerstance textField contents:'Algernon'.
	algerstance updateItemList.
	algerstance selectNext.
	
	self assert: (algerstance currentAlgertem name) = 'Algernon'.
	 ^ nil.