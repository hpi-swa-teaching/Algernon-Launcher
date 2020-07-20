event handling
mouseMove: evt
	| newSelection |
	newSelection:= (self listItemAtPosition: evt position).
	newSelection ifNotNil: [self selectedItem: newSelection].