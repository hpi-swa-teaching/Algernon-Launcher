event handling
moveSelection: direction 
	"Move the current selection up or down by one. direction = +/-1"
	| index m |
	index := (submorphs indexOf: selectedItem
				ifAbsent: [1 - direction]) + direction.
	submorphs do: [:unused | 
			m := submorphs atWrap: index.
			m isEnabled
				ifTrue: [^ self selectedItem: m].
			index := index + direction].
	^ self selectedItem: nil