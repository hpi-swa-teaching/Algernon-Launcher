testing docking bar types
testDockingBarDifferentIconsForDifferentMenus
	| allItemIcons |
	
	allItemIcons := OrderedCollection new.
	allItemIcons add: (self itemIcon: 'Save').
	allItemIcons add: (self itemIcon: 'CreateMVCProject').
	allItemIcons add: (self itemIcon: 'File List').
	allItemIcons add: (self itemIcon: 'http proxy editor').
	allItemIcons add: (self itemIcon: 'Transcript clear').
	allItemIcons add: (self itemIcon: 'RecoverChanges').
	allItemIcons add: (self itemIcon: 'Online Resources').
	
	self assert: (allItemIcons allSatisfy: 
		[ :icon | 
		(allItemIcons  count: [ :otherIcon | otherIcon = icon ]) = 1])