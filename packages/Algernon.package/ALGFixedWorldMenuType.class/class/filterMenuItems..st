as yet unclassified
filterMenuItems: aMorph
	| entries |
	entries := OrderedCollection new.
	(aMorph isKindOf: DockingBarUpdatingMenuMorph) 
		ifFalse: [ entries addAll: aMorph submorphs ].
						
	^ entries