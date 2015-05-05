testing
testLearning
	"Make sure Learning works"
	|firstList secondList|
	self ensureMorphic.
	algerstance class initializeAlgertems.
	algerstance := Algernon open.


	firstList := (algerstance relevantAlgertemsFor:'Algernon').
	algerstance show.
	algerstance textField contents:'Algernon'.
	algerstance updateItemList.
	algerstance selectNext; selectNext.
	algerstance doActionOnSelectedEvent:nil.
	secondList := (algerstance relevantAlgertemsFor:'Algernon').

	self deny:firstList = secondList.
	self assert:(firstList at:3) = (secondList at:1).
	
	
	^ nil