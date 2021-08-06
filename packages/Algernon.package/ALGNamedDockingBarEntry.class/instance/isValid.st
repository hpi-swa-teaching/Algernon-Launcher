accessing
isValid
	"Since there are multiple different types of submorphs in the docking bar or elsewhere,
	a Docking Bar Entry is only valid if it is an instance of one of the classes below."

	^ (self morph isKindOf: DockingBarItemMorph) or: [self morph isKindOf: MenuItemMorph]