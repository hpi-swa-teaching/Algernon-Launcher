selection
selectItem: aMenuItem event: anEvent
	| listItem |

	aMenuItem ifNotNil: [
		super selectItem: aMenuItem event: anEvent.
		listItem := self selectedAlgernonListItem.

		listItem ifNotNil: [
			aMenuItem contents: (aMenuItem contents, '    -> ', self selectedAlgernonListItem defaultAlgeraction name).
			typeList submorphs do:[:each | each color: typeList labelColor].
			(typeList submorphs at:(self submorphs indexOf: selectedItem)) color: Color white.
		].
	].	
