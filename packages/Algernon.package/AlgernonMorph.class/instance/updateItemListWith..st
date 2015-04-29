lists
updateItemListWith: aString
	| aList|
	self hideItemList.
	aList := (self relevantAlgertemsFor: aString).
	aList size = 0 ifTrue: [^self].
	itemList := ItemList createMenuList: aList in: self withHeight:180.
		
