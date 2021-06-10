testing world menu types
testWorldMenuDefaultAction

	| menu |
	menu := ALGFakeDockingBarItemMorph addToDockingBar.
	self testItemActionName: 'Dummy menu entry' equals: 'open'.
	menu abandon