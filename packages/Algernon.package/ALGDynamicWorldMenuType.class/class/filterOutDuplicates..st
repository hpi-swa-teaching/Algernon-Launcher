algertem lists
filterOutDuplicates: anOrderedCollection

	^ anOrderedCollection reject: [ :entry | 
		entry isMenuItemMorph
			ifTrue: [
				ALGStaticWorldMenuType algertemList anySatisfy: 
					[ :staticEntry |
						staticEntry name = entry contents ]
																			]
			ifFalse: [ false ]
	 ]
