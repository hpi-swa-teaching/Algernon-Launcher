algertem lists
extractMenuEntriesFrom: aMorph
	^ (aMorph isKindOf: DockingBarUpdatingMenuMorph) 
		ifTrue: [ | entries |
				aMorph updateMenu. 
				entries := aMorph submorphs.
				aMorph removeAllMorphs.
				entries 							]
		ifFalse: [ OrderedCollection new ]