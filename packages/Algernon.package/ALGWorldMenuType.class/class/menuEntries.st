algertem lists
menuEntries
	|entries|
	
	entries := OrderedCollection new.	

	(self menus
		collect: [ :each | ALGNamedWorldMenuEntry newFrom: each subMenu name: each contents ])
		do: [ :each |
			entries addAll: (
				(self extractMenuEntriesFrom: each)
					collect: [ :entry | ALGNamedWorldMenuEntry newFrom: entry name: each name]) ].
	
	^ entries select: [:each | each morph isKindOf: MenuItemMorph]
	