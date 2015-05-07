testing
testLearningActions
	"Make sure Learning works with actions too"
	| firstItem secondItem firstItemSecondTry secondItemSecondTry|

	self ensureMorphic.
	algerstance class initializeAlgertems.

	algerstance show.
	algerstance textField contents:'Algernon'.
	algerstance updateItemList.
	algerstance toggleSubmenuOnSelectedItem:nil.
	firstItem := ((algerstance instVarNamed:'itemList') instVarNamed:'actionList') selectedItem contents.
	algerstance selectNext.
	secondItem := ((algerstance instVarNamed:'itemList') instVarNamed:'actionList') selectedItem contents.
	algerstance doActionOnSelectedEvent:nil.
	
	algerstance show.
	algerstance textField contents:'Algernon'.
	algerstance updateItemList.
	algerstance toggleSubmenuOnSelectedItem:nil.
	firstItemSecondTry := ((algerstance instVarNamed:'itemList') instVarNamed:'actionList') selectedItem contents.
	algerstance selectNext.
	secondItemSecondTry := ((algerstance instVarNamed:'itemList') instVarNamed:'actionList') selectedItem contents.
	
	self assert: firstItem = secondItemSecondTry.
	self assert: secondItem = firstItemSecondTry.
	


	
	^ nil