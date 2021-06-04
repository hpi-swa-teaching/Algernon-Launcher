testing world menu types
testWorldMenuSameIconsForSameMenu
	
	self assert: (self itemIcon: 'Save') = (self itemIcon: 'Save and Quit')