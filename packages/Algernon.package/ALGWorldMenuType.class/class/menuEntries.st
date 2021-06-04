algertem lists
menuEntries
	|entries|
	
	entries := OrderedCollection new.	

	((self menus
		collect: [ :each | {each subMenu. each contents} ])
		reject: [ :each | each first isNil ])
		do: [ :each |
			entries addAll: (
				(self extractMenuEntriesFrom: each first withName: each second)
					collect: [ :each2 | {each2. each second} ]
				 )
		].
	
	^ entries select: [:each | each first isKindOf: MenuItemMorph]
	