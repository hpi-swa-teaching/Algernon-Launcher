algertem lists
menus
	^ self dockingBar submorphs
		select: [:each | 
			(each isKindOf: MenuItemMorph) and: [ each isNil not ] ]