algertem lists
extractMenuEntriesFrom: aNamedWorldMenuEntry
	^ aNamedWorldMenuEntry isDynamic
		ifTrue: [ | entries |
				aNamedWorldMenuEntry morph updateMenu.
				entries := OrderedCollection newFrom: aNamedWorldMenuEntry menuEntries.
				entries := self filterOutDuplicates: entries.
				aNamedWorldMenuEntry morph removeAllMorphs.
				entries 																	                       ]
		ifFalse: [ OrderedCollection new ]