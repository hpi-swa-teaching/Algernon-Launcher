as yet unclassified
menus
	^ self dockingBar submorphs select: [:each | each isKindOf: MenuItemMorph]