algertem lists
extractMenuEntriesFrom: aNamedWorldMenuEntry
	^ (aNamedWorldMenuEntry morph isKindOf: DockingBarUpdatingMenuMorph) 
		ifTrue: [ | entries |
				aNamedWorldMenuEntry morph updateMenu.
				entries := OrderedCollection newFrom: (self menuEntries: aNamedWorldMenuEntry).
				aNamedWorldMenuEntry morph removeAllMorphs.
				entries 																	                                                         ]
		ifFalse: [ OrderedCollection new ]