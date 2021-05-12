event handling
moveSelection: direction 
	"Move the current selection up or down by one. direction = +/-1"
	| index m |
	index := (self items indexOf: self selectedItem
				ifAbsent: [1 - direction]) + direction.
	self scroller submorphs do: [:unused | 
			m := self items atWrap: index.
			m isEnabled
				ifTrue: [^ self selectedItem: m].
			index := index + direction].
	^ self selectedItem: nil