drawing
popup
	| x y |
	x := self controller center x - (self width / 2).
	y := self controller bottom + self class verticalOffset.
	"precompute width"
	self positionAt: x @ y
		relativeTo: self selectedItem
		inWorld: self controller.
	self controller addMorphFront: self.
	"Acquire focus for valid pop up behavior"
	self initializePosition.
	self moveSelection: 1