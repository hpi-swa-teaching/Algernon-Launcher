testing world menu types
testWorldMenuDefaultIcon

	| menu |
	menu := ALGFakeDockingBarItemMorph addToDockingBar.
	self assert: (self itemIcon: 'Dummy menu entry') equals: #WorldMenu.
	menu abandon