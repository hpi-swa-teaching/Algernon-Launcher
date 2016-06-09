testing
testShowParentList

	|searchTerm list|
	searchTerm := 'test'.
	
	Algernon open. 
	Algernon currentInstance textField contents: searchTerm.
	Algernon currentInstance updateItemList.
	Algernon currentInstance selectNext.
	list := Algernon currentInstance itemList.
	[Algernon currentInstance currentItem hasChildren] whileFalse:  [Algernon currentInstance selectNext].
	Algernon currentInstance showChildList.
	self assert: Algernon currentInstance itemList hasItems.
	self assert: list ~= Algernon currentInstance itemList.
	Algernon close.