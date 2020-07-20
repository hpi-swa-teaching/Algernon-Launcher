event handling
mouseMove: evt 
	(self listItemAtPosition: evt position)
		ifNotNil: [:sel | self selectedItem: sel]