testing world menu types
testWorldMenuSameIconsInMenu
	| icon1 icon2 |
	
	self runQuery: 'Save'.
	icon1 := self items first icon.
	self runQuery: 'Save and Quit'.
	icon2 := self items first icon.
	
	self assert: icon1 = icon2.