testing
testBreadcrumbsList

	|searchTerm size|
	searchTerm := 'test'.
	
	Algernon open. 
	Algernon currentInstance textField contents: searchTerm.
	Algernon currentInstance updateItemList.
	Algernon currentInstance selectNext.
	size := Algernon currentInstance breadcrumbs submorphs size.
	[Algernon currentInstance currentItem hasChildren] whileFalse:  [Algernon currentInstance selectNext].
	Algernon currentInstance showChildList.
	self assert: Algernon currentInstance breadcrumbs submorphs size equals: size + 1.
	Algernon close.