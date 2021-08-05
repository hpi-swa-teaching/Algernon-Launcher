testing
testSelectedListItemWhenTitleSelected
	| item selectedItem |
	item := ALGResultItemMorph newWithContents: 'Test Title' in: self algInstance itemList.
	self algInstance itemList selectedItem: item.
	"A title item is not selectable, so selectedItemList should be NullItem"
	selectedItem := self algInstance itemList selectedListItem.
	self assert: selectedItem class equals: ALGNullItem