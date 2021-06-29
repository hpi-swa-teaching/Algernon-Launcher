algertem lists
filterOutDuplicates: aCollection

	^ aCollection reject: 
		[ :entry | entry isMenuItemMorph and:
			[ ALGStaticWorldMenuType algertemList anySatisfy: 
				[ :staticEntry | staticEntry name = entry contents ] ] ]
