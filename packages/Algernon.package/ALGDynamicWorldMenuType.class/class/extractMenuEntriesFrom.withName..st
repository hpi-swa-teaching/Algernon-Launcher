algertem lists
extractMenuEntriesFrom: aMorph withName: menuName
	^ (aMorph isKindOf: DockingBarUpdatingMenuMorph) 
		ifTrue: [ | entries |
				aMorph updateMenu.
				entries := OrderedCollection newFrom: (self menuEntries: aMorph forName: menuName).
				aMorph removeAllMorphs.
				entries 							]
		ifFalse: [ OrderedCollection new ]