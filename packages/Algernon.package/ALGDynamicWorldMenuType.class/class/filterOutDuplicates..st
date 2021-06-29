algertem lists
filterOutDuplicates: anOrderedCollection

	^ anOrderedCollection reject: [ :entry | 
		entry isMenuItemMorph
			ifTrue: [
				ALGStaticWorldMenuType algertemList anySatisfy: 
				[ :entry2 |
					entry2 name = entry contents                                      ]
																			]
	 ]