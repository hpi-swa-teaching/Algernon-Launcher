drawing
popup

	| x y |
	x := self controller center x - (self width / 2).
	y := self controller bottom + self class verticalOffset.
	
	"Present this menu at the given point under control of the given 
	hand."
	self controller submorphs
		select: [:each | (each isKindOf: MenuMorph)
				and: [each stayUp not]]
		thenCollect: [:menu | menu delete].
	(self submorphs
		select: [:m | m isKindOf: UpdatingMenuItemMorph])
		do: [:m | m updateContents].
	"precompute width"
	self
		positionAt: x@y
		relativeTo: selectedItem
		inWorld: self controller.
	self controller addMorphFront: self.
	"Acquire focus for valid pop up behavior"
	self controller activeHand newMouseFocus: self;
		 showTemporaryCursor: nil.
	self initializePosition.