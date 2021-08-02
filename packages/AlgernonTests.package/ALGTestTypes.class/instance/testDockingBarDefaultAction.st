testing docking bar types
testDockingBarDefaultAction

	| menu |
	menu := ALGFakeDockingBarItemMorph addToDockingBar.
	self testItemActionName: 'Dummy menu entry' equals: 'open'.
	menu abandon