testing docking bar types
testFindsNewDockingBarEntries

	| menu |
	menu := ALGFakeDockingBarItemMorph addToDockingBar.
	self assertDockingBarEntry: 'Dummy menu entry'.
	menu abandon