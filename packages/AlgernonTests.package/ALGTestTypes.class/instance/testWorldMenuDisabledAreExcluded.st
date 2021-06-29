testing world menu types
testWorldMenuDisabledAreExcluded
	
	| menu |
	menu := ALGFakeDockingBarItemMorph addToDockingBar.
	menu subMenu updateMenu.
	self runQuery: 'Disabled dummy menu entry'.
	self deny: (self resultsIncludeName: 'Disabled dummy menu entry').
	menu abandon.
