testing
testCategoriesVisible

	algerstance textField contents: 'Algernon'.
	algerstance updateItemList.
	"Categories show up as disabled list items."
	self assert: ((algerstance itemList items select: [ :each |
		each isEnabled not ]) size > 0). 