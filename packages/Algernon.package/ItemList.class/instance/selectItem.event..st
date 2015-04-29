selection
selectItem: aMenuItem event: anEvent
	super selectItem: aMenuItem event: anEvent.
	typeList submorphs do:[:each | each color: typeList labelColor].
	(typeList submorphs at:(self submorphs indexOf: selectedItem)) color: Color white.
