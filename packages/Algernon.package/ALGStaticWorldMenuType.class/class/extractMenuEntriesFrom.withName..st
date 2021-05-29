algertem lists
extractMenuEntriesFrom: aMorph withName: menuName
	^ (aMorph isKindOf: DockingBarUpdatingMenuMorph) 
		ifTrue: [ OrderedCollection new ]
		ifFalse: [ OrderedCollection newFrom: aMorph submorphs ]