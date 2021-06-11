testing world menu types
testFindsNewDynamicWorldMenuEntries

	| menu |
	menu := ALGFakeDockingBarItemMorph addToDockingBar.
	self assertWorldMenuEntry: 'Dummy menu entry'.
	menu abandon