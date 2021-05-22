helpers
filterMenuItems: aMorph withName: menuName
	| entries |
	entries := OrderedCollection new.
	(aMorph isKindOf: DockingBarUpdatingMenuMorph) 
		ifTrue: [
			aMorph updateMenu.
			self exclude: aMorph withName: menuName.
			entries addAll: aMorph submorphs.
			aMorph removeAllMorphs			].
						
	^ entries