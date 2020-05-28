event handling
moveSelectionDown: direction
	"Move the current selection up or down by one, presumably under keyboard control.
	direction = +/-1"

	| index  |
	index := (submorphs indexOf: selectedItem ifAbsent: [1-direction]) + direction.
	submorphs do: "Ensure finite"
		[:unused | | m |
		m := submorphs atWrap: index.
		m isEnabled ifTrue: [^ self selectedItem: m].
		index := index + direction sign].
	^ self selectedItem: nil.