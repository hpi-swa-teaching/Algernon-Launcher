as yet unclassified
testNormalInput
	"Make sure normal input works"
	|resultList|
	self ensureMorphic.
	algerstance class initializeAlgertems.

	resultList := (algerstance relevantAlgertemsFor:'Algernon').
	algerstance show.
	algerstance textField contents:'Algernon'.
	algerstance updateItemList.
	algerstance selectNext.
	
	self assert: (algerstance currentAlgertem name) = 'Algernon'.
	 ^ nil.