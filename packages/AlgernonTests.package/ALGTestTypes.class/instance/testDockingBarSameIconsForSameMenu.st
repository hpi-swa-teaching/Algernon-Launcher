testing docking bar types
testDockingBarSameIconsForSameMenu
	
	self assert: (self itemIcon: 'Save') = (self itemIcon: 'Save and Quit')