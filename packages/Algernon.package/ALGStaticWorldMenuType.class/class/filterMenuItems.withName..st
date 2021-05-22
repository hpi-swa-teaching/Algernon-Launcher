helpers
filterMenuItems: aMorph withName: menuName
	| entries |
	entries := OrderedCollection new.
	(aMorph isKindOf: DockingBarUpdatingMenuMorph) 
		ifFalse: [ entries addAll: aMorph submorphs ].
						
	^ entries