selection
selectItem: aMenuItem event: anEvent	

	aMenuItem ifNotNil: [
		| listItem |
		super selectItem: aMenuItem event: anEvent.
		listItem := self selectedAlgernonListItem.

		((listItem isNil not) and: (aMenuItem isEnabled)) ifTrue: [
			aMenuItem contents: (aMenuItem contents, '    -> ', self selectedAlgernonListItem defaultAlgeraction name).
			typeList submorphs do:[:each | each color: typeList labelColor].
			(typeList submorphs at:(self submorphs indexOf: selectedItem)) color: Color white.
		].
	].	
