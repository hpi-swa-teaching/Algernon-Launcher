selection
selectedAlgernonListItem
	| item |
	item := algernonListItems at:(submorphs indexOf: selectedItem).
	"
	(item isKindOf: ALGItem) ifFalse: [^ nil].
	"
	^ item.

