testing world menu types
testFindsNewDynamicDockingBarEntries

	| menu |
	menu := ALGFakeDockingBarItemMorph addToDockingBar.
	self assertDockingBarEntry: 'Dummy menu entry'.
	menu abandon