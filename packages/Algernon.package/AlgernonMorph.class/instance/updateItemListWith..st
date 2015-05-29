lists
updateItemListWith: aString
	| aList|
	self hideItemList.
	aList := (self relevantAlgertemsFor: aString).
	aList size = 0 ifTrue: [^self].
	"todo categorize list"
	"todo create item list for each category"
	itemList := ItemList createMenuList: aList in: self withHeight:180.
		
