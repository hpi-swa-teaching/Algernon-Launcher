testing world menu types
testDockingBarDefaultIcon

	| menu |
	menu := ALGFakeDockingBarItemMorph addToDockingBar.
	self assert: (self itemIcon: 'Dummy menu entry') equals: #DockingBar.
	menu abandon