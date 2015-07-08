testing
testLearning
	"Make sure Learning works"
	|firstList secondList|
	self ensureMorphic.
	algerstance class initializeAlgertems.

	firstList := algerstance categorizer categorize: (algerstance relevantAlgertemsFor:'Algernon').
	algerstance show.
	algerstance textField contents:'Algernon'.
	algerstance updateItemList.
	algerstance selectNext; selectNext.
	algerstance doActionOnSelectedEvent:nil.
	secondList := algerstance categorizer categorize: (algerstance relevantAlgertemsFor:'Algernon').

	self deny: firstList = secondList.
	self assert: ((firstList at: 1) algertems at: 1) = ((secondList at:1) algertems at:3).
	
	^ nil