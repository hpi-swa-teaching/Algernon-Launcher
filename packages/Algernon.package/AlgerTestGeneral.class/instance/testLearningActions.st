testing
testLearningActions
	"Make sure Learning works with actions too"
	| firstItem secondItem firstItemSecondTry secondItemSecondTry|

	self ensureMorphic.
	algerstance class initializeAlgertems.

	algerstance show.
	algerstance textField contents:'Algernon'.
	algerstance updateItemList.
	algerstance showChildList.
	firstItem := algerstance itemList selectedListItem.
	algerstance selectNext.
	secondItem := algerstance itemList selectedListItem.
	algerstance doActionOnSelectedEvent: MorphicEvent new.
	algerstance hide.
	
	algerstance show.
	algerstance textField contents:'Algernon'.
	algerstance updateItemList.
	algerstance showChildList.
	firstItemSecondTry := algerstance itemList selectedListItem.
	algerstance selectNext.
	secondItemSecondTry := algerstance itemList selectedListItem.
	
	self assert: firstItem = secondItemSecondTry.
	self assert: secondItem = firstItemSecondTry.
	


	
	^ nil