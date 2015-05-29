testing
testCategories
	"Make sure categories are displayed correctly."
	| categories |
	algerstance textField contents: 'Algernon'.
	algerstance updateItemList.
	categories := algerstance itemList items
		collect: [ :each | each isEnabled not ]. "Categories are disabled list items."
	self assert: (categories size > 0).