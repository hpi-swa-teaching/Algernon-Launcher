accessing
isValid

	^ (self morph isKindOf: DockingBarItemMorph) or: [self morph isKindOf: MenuItemMorph]