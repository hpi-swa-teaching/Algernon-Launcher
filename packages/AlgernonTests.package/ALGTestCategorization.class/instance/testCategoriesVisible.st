testing
testCategoriesVisible

	self runQuery: 'Algernon'.
	"Categories show up as disabled list items."
	self assert: ((self algInstance itemList items select: [ :each |
		each isEnabled not ]) size > 0)