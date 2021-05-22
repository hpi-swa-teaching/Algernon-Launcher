helpers
filterMenuItems: aMorph withName: menuName
	| entries |
	entries := OrderedCollection new.
	(aMorph isKindOf: DockingBarUpdatingMenuMorph) 
		ifTrue: [
			aMorph updateMenu.
			entries addAll: (self menuEntries: aMorph forName: menuName).
			aMorph removeAllMorphs			].
						
	^ entries