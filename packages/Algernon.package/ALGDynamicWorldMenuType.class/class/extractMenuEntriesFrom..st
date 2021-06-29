algertem lists
extractMenuEntriesFrom: aNamedWorldMenuEntry
	^ (aNamedWorldMenuEntry morph isKindOf: DockingBarUpdatingMenuMorph) 
		ifTrue: [ | entries |
				aNamedWorldMenuEntry morph updateMenu.
				entries := OrderedCollection newFrom: (self menuEntries: aNamedWorldMenuEntry).
				entries := self filterOutDuplicates: entries.
				aNamedWorldMenuEntry morph removeAllMorphs.
				entries 																	                                                         ]
		ifFalse: [ OrderedCollection new ]