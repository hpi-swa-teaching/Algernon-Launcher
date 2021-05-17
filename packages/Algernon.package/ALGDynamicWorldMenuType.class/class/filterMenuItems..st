as yet unclassified
filterMenuItems: aMorph
	| entries |
	entries := OrderedCollection new.
	(aMorph isKindOf: DockingBarUpdatingMenuMorph) 
		ifTrue: [
			aMorph updateMenu. 
			entries addAll: aMorph submorphs.
			aMorph removeAllMorphs				].
						
	^ entries