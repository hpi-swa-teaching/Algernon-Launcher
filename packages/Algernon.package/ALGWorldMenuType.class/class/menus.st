helpers
menus
	^ self dockingBar submorphs select: [:each | each isKindOf: MenuItemMorph]