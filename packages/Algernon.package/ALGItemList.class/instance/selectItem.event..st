selection
selectItem: aMenuItem event: anEvent
	super selectItem: aMenuItem event: anEvent.
	
	aMenuItem contents: (aMenuItem contents, '    -> ', self selectedAlgernonListItem defaultAlgeraction name).
	typeList submorphs do:[:each | each color: typeList labelColor].
	(typeList submorphs at:(self submorphs indexOf: selectedItem)) color: Color white.
