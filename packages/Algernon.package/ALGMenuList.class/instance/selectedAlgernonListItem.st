selection
selectedAlgernonListItem
	| item |
	selectedItem ifNotNil: [
		item := algernonListItems at:(submorphs indexOf: selectedItem).]
			ifNil: [item := nil].
	"
	(item isKindOf: ALGItem) ifFalse: [^ nil].
	"
	^ item.

