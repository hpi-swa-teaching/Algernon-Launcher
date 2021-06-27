algertem lists
extractMenuEntriesFrom: aNamedWorldMenuEntry
	^ (aNamedWorldMenuEntry morph isKindOf: DockingBarUpdatingMenuMorph) 
		ifTrue: [ OrderedCollection new ]
		ifFalse: [ OrderedCollection newFrom: aNamedWorldMenuEntry menuEntries ]