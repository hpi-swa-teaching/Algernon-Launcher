testing
testCategoriesVisible

	algerInstance textField contents: 'Algernon'.
	algerInstance updateItemList.
	"Categories show up as disabled list items."
	self assert: ((algerInstance itemList items select: [ :each |
		each isEnabled not ]) size > 0)