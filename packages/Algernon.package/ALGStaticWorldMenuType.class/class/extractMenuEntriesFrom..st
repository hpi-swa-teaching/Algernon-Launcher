algertem lists
extractMenuEntriesFrom: aMorph
	^ (aMorph isKindOf: DockingBarUpdatingMenuMorph) 
		ifTrue: [ OrderedCollection new ]
		ifFalse: [ OrderedCollection newFrom: aMorph submorphs ]